#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <iostream>
#include <stdio.h>
#include <queue>
#include <string>

using namespace std;
using namespace cv;

static int MIN_Y = 0, MAX_Y = 256, MIN_CR = 131, MAX_CR = 159, MIN_CB = 85, MAX_CB = 135;
cv::Mat skinMask(cv::Mat srcBGR) {
	// transform from BGR to YCrCb
	// http://opencv.willowgarage.com/documentation/python/miscellaneous_image_transformations.html
	vector<cv::Mat> srcBGR_channels;
	cv::split(srcBGR, srcBGR_channels);

	vector<cv::Mat> srcYCrCb_channels(3,cv::Mat());
	srcYCrCb_channels[0] = 0.299*srcBGR_channels[2] + 0.587*srcBGR_channels[1] + 0.114*srcBGR_channels[0];
	srcYCrCb_channels[1] = (srcBGR_channels[2] - srcYCrCb_channels[0])*0.713 + 128;
	srcYCrCb_channels[2] = (srcBGR_channels[0] - srcYCrCb_channels[0])*0.564 + 128;

	// threshold in YCrCb color space
	// thresholds were adapted from here
	// http://www.ee.cuhk.edu.hk/~knngan/TCSVT_v9_n4_p551-564.pdf
	cv::Mat mask = (srcYCrCb_channels[0] >= MIN_Y) & (srcYCrCb_channels[0] < MAX_Y) &
			(srcYCrCb_channels[1] >= MIN_CR) & (srcYCrCb_channels[1] < MAX_CR) &
			(srcYCrCb_channels[2] >= MIN_CB) & (srcYCrCb_channels[2] < MAX_CB);

	return mask;
}

// http://www.electronics.dit.ie/staff/aschwarzbacher/research/mpc08-1Blob.pdf
const static int BLOBS_SIZE = 512;
const static int MAX_RL_CODES = 512; // maximum number of rl codes per image line
const static int RL_CODE_SIZE = MAX_RL_CODES*2+1;
const static int RL_CODE_LABEL_SIZE = MAX_RL_CODES;
struct Blob {
	bool valid;
	int eq_ind;
	int count;
	int min_i, max_i;
	int min_j, max_j;
	// after a merge, a blob gets cleared and a label gets freed.
	//first_clear indicates in the label has already been freed.
	bool first_clear;
};
Blob blobs[BLOBS_SIZE];
queue<int> free_labels;

// merges blob1 into blob0
void merge_blobs(Blob& blob0, Blob& blob1) {
	blob1.valid = 0;
	blob0.count += blob1.count;
	blob0.min_i = min(blob0.min_i, blob1.min_i);
	blob0.max_i = max(blob0.max_i, blob1.max_i);
	blob0.min_j = min(blob0.min_j, blob1.min_j);
	blob0.max_j = max(blob0.max_j, blob1.max_j);
	blob1.eq_ind = blob0.eq_ind;
}

void update_optimal_blob(const Blob& blob) {
	if (!blobs[0].valid || blob.count > blobs[0].count)
		blobs[0] = blob;
}

void blobAnalysisTwoLines(int* rl_code0, int* rl_code_label0, int* rl_code1, int* rl_code_label1, int row1, int cols) {
	int ind0 = 0;
	int ind1 = 0;
	bool rl_code0_end = (rl_code0[ind0*2]==2047);
	bool rl_code1_end = (rl_code1[ind1*2]==2047);
	int cleared_labels_count = 0;
	while (!(rl_code0_end && rl_code1_end)) {
		int s0 = rl_code0[ind0*2];
		int e0 = rl_code0[ind0*2+1];
		int s1 = rl_code1[ind1*2];
		int e1 = rl_code1[ind1*2+1];
		bool overlap = ((s1<(e0+2)) && (s0<(e1+2)));
		//cout << "overlap " << overlap << "\t" << " " << s0 << " " << e0 << " " << s1 << " " << e1 << endl;
		if (overlap) {
			if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]!=0) {
				rl_code_label0[ind0] = blobs[rl_code_label1[ind1]].eq_ind;
				blobs[rl_code_label1[ind1]].count += e0-s0+1;
				blobs[rl_code_label1[ind1]].min_j = min(blobs[rl_code_label1[ind1]].min_j, s0);
				blobs[rl_code_label1[ind1]].max_j = max(blobs[rl_code_label1[ind1]].max_j, e0);
				blobs[rl_code_label1[ind1]].min_i = min(blobs[rl_code_label1[ind1]].min_i, row1-1);
				blobs[rl_code_label1[ind1]].max_i = row1;
				update_optimal_blob(blobs[rl_code_label1[ind1]]);
			} else if (rl_code_label0[ind0]!=0 && rl_code_label1[ind1]==0) {
				rl_code_label1[ind1] = blobs[rl_code_label0[ind0]].eq_ind;
				blobs[rl_code_label0[ind0]].count += e1-s1+1;
				blobs[rl_code_label0[ind0]].min_j = min(blobs[rl_code_label0[ind0]].min_j, s1);
				blobs[rl_code_label0[ind0]].max_j = max(blobs[rl_code_label0[ind0]].max_j, e1);
				blobs[rl_code_label0[ind0]].min_i = min(blobs[rl_code_label0[ind0]].min_i, row1);
				blobs[rl_code_label0[ind0]].max_i = row1;
				update_optimal_blob(blobs[rl_code_label0[ind0]]);
			} else if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]==0) {
				if ((free_labels.size() - cleared_labels_count) > 0) {
					int new_label = free_labels.front();
					free_labels.pop();
					rl_code_label0[ind0] = new_label;
					rl_code_label1[ind1] = new_label;
					blobs[new_label].valid = 1;
					blobs[new_label].eq_ind = new_label;
					blobs[new_label].count = e0-s0+e1-s1+2;
					blobs[new_label].min_j = min(s0,s1);
					blobs[new_label].max_j = max(e0,e1);
					blobs[new_label].min_i = row1-1;
					blobs[new_label].max_i = row1;
					blobs[new_label].first_clear = 1;
					update_optimal_blob(blobs[new_label]);
				} else {
					cout << "Warning: ran out of new labels." << endl;
				}
			} else {
				if (rl_code_label0[ind0] > rl_code_label1[ind1]) {
					int cleared_label = rl_code_label0[ind0];
					merge_blobs(blobs[rl_code_label1[ind1]], blobs[cleared_label]);
					rl_code_label0[ind0] = rl_code_label1[ind1];
					if (blobs[cleared_label].first_clear) {
						free_labels.push(cleared_label);
						cleared_labels_count++;
						blobs[cleared_label].first_clear = 0;
					}
					update_optimal_blob(blobs[rl_code_label1[ind1]]);
				} else if (rl_code_label0[ind0] < rl_code_label1[ind1]) {
					int cleared_label = rl_code_label1[ind1];
					merge_blobs(blobs[rl_code_label0[ind0]], blobs[cleared_label]);
					rl_code_label1[ind1] = rl_code_label0[ind0];
					if (blobs[cleared_label].first_clear) {
						free_labels.push(cleared_label);
						cleared_labels_count++;
						blobs[cleared_label].first_clear = 0;
					}
					update_optimal_blob(blobs[rl_code_label0[ind0]]);
				}
			}
		} else {
			if (s0<cols && rl_code_label0[ind0]==0) {
				if ((free_labels.size() - cleared_labels_count) > 0) {
					int new_label = free_labels.front();
					free_labels.pop();
					rl_code_label0[ind0] = new_label;
					blobs[new_label].valid = 1;
					blobs[new_label].eq_ind = new_label;
					blobs[new_label].count = e0-s0+1;
					blobs[new_label].min_j = s0;
					blobs[new_label].max_j = e0;
					blobs[new_label].min_i = row1-1;
					blobs[new_label].max_i = row1-1;
					blobs[new_label].first_clear = 1;
					update_optimal_blob(blobs[new_label]);
				} else {
					cout << "Warning: ran out of new labels." << endl;
				}
			}
			if (s1<cols && rl_code_label1[ind1]==0) {
				if ((free_labels.size() - cleared_labels_count) > 0) {
					int new_label = free_labels.front();
					free_labels.pop();
					rl_code_label1[ind1] = new_label;
					blobs[new_label].valid = 1;
					blobs[new_label].eq_ind = new_label;
					blobs[new_label].count = e1-s1+1;
					blobs[new_label].min_j = s1;
					blobs[new_label].max_j = e1;
					blobs[new_label].min_i = row1;
					blobs[new_label].max_i = row1;
					blobs[new_label].first_clear = 1;
					update_optimal_blob(blobs[new_label]);
				} else {
					cout << "Warning: ran out of new labels." << endl;
				}
			}
		}

		if (rl_code1_end) ind0++;
		else if (rl_code0_end) ind1++;
		else {
			int s0_next = rl_code0[ind0*2+2];
			int s1_next = rl_code1[ind1*2+2];
			if (s0_next <= s1_next) ind0++;
			else ind1++;
		}
		rl_code0_end = (rl_code0[ind0*2]==2047);
		rl_code1_end = (rl_code1[ind1*2]==2047);
	}
}

bool blobAnalysisTwoPartialLines(int& ind0, int* rl_code0, int* rl_code_label0,
		int& ind1, int* rl_code1, int* rl_code_label1,
		int cleared_labels_count, int row1, int valid_ind, int cols) {
	if ((ind1+2) > valid_ind) return false;
	bool rl_code0_end = (rl_code0[ind0*2]==2047);
	bool rl_code1_end = (rl_code1[ind1*2]==2047);
	if (rl_code0_end && rl_code1_end) return true;

	int s0 = rl_code0[ind0*2];
	int e0 = rl_code0[ind0*2+1];
	int s1 = rl_code1[ind1*2];
	int e1 = rl_code1[ind1*2+1];
	bool overlap = ((s1<(e0+2)) && (s0<(e1+2)));
	//cout << "overlap " << overlap << "\t" << " " << s0 << " " << e0 << " " << s1 << " " << e1 << endl;
	if (overlap) {
		if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]!=0) {
			rl_code_label0[ind0] = blobs[rl_code_label1[ind1]].eq_ind;
			blobs[rl_code_label1[ind1]].count += e0-s0+1;
			blobs[rl_code_label1[ind1]].min_j = min(blobs[rl_code_label1[ind1]].min_j, s0);
			blobs[rl_code_label1[ind1]].max_j = max(blobs[rl_code_label1[ind1]].max_j, e0);
			blobs[rl_code_label1[ind1]].min_i = min(blobs[rl_code_label1[ind1]].min_i, row1-1);
			blobs[rl_code_label1[ind1]].max_i = row1;
			update_optimal_blob(blobs[rl_code_label1[ind1]]);
		} else if (rl_code_label0[ind0]!=0 && rl_code_label1[ind1]==0) {
			rl_code_label1[ind1] = blobs[rl_code_label0[ind0]].eq_ind;
			blobs[rl_code_label0[ind0]].count += e1-s1+1;
			blobs[rl_code_label0[ind0]].min_j = min(blobs[rl_code_label0[ind0]].min_j, s1);
			blobs[rl_code_label0[ind0]].max_j = max(blobs[rl_code_label0[ind0]].max_j, e1);
			blobs[rl_code_label0[ind0]].min_i = min(blobs[rl_code_label0[ind0]].min_i, row1);
			blobs[rl_code_label0[ind0]].max_i = row1;
			update_optimal_blob(blobs[rl_code_label0[ind0]]);
		} else if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]==0) {
			if ((free_labels.size() - cleared_labels_count) > 0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].eq_ind = new_label;
				blobs[new_label].count = e0-s0+e1-s1+2;
				blobs[new_label].min_j = min(s0,s1);
				blobs[new_label].max_j = max(e0,e1);
				blobs[new_label].min_i = row1-1;
				blobs[new_label].max_i = row1;
				blobs[new_label].first_clear = 1;
				update_optimal_blob(blobs[new_label]);
			} else {
				cout << "Warning: ran out of new labels." << endl;
			}
		} else {
			if (rl_code_label0[ind0] > rl_code_label1[ind1]) {
				int cleared_label = rl_code_label0[ind0];
				merge_blobs(blobs[rl_code_label1[ind1]], blobs[cleared_label]);
				rl_code_label0[ind0] = rl_code_label1[ind1];
				if (blobs[cleared_label].first_clear) {
					free_labels.push(cleared_label);
					cleared_labels_count++;
					blobs[cleared_label].first_clear = 0;
				}
				update_optimal_blob(blobs[rl_code_label1[ind1]]);
			} else if (rl_code_label0[ind0] < rl_code_label1[ind1]) {
				int cleared_label = rl_code_label1[ind1];
				merge_blobs(blobs[rl_code_label0[ind0]], blobs[cleared_label]);
				rl_code_label1[ind1] = rl_code_label0[ind0];
				if (blobs[cleared_label].first_clear) {
					free_labels.push(cleared_label);
					cleared_labels_count++;
					blobs[cleared_label].first_clear = 0;
				}
				update_optimal_blob(blobs[rl_code_label0[ind0]]);
			}
		}
	} else {
		if (s0<cols && rl_code_label0[ind0]==0) {
			if ((free_labels.size() - cleared_labels_count) > 0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].eq_ind = new_label;
				blobs[new_label].count = e0-s0+1;
				blobs[new_label].min_j = s0;
				blobs[new_label].max_j = e0;
				blobs[new_label].min_i = row1-1;
				blobs[new_label].max_i = row1-1;
				blobs[new_label].first_clear = 1;
				update_optimal_blob(blobs[new_label]);
			} else {
				cout << "Warning: ran out of new labels." << endl;
			}
		}
		if (s1<cols && rl_code_label1[ind1]==0) {
			if ((free_labels.size() - cleared_labels_count) > 0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].eq_ind = new_label;
				blobs[new_label].count = e1-s1+1;
				blobs[new_label].min_j = s1;
				blobs[new_label].max_j = e1;
				blobs[new_label].min_i = row1;
				blobs[new_label].max_i = row1;
				blobs[new_label].first_clear = 1;
				update_optimal_blob(blobs[new_label]);
			} else {
				cout << "Warning: ran out of new labels." << endl;
			}
		}
	}

	if (rl_code1_end) ind0++;
	else if (rl_code0_end) ind1++;
	else {
		int s0_next = rl_code0[ind0*2+2];
		int s1_next = rl_code1[ind1*2+2];
		if (s0_next <= s1_next) ind0++;
		else ind1++;
	}
	rl_code0_end = (rl_code0[ind0*2]==2047);
	rl_code1_end = (rl_code1[ind1*2]==2047);

	return false;
}

Mat drawBlobs(const Mat& mask) {
	Mat mask_cpy;
	cv::merge(vector<Mat>(3,mask.clone()), mask_cpy);

	int valid_blobs = 0;
	for (int k=1; k<BLOBS_SIZE; k++) if (blobs[k].valid) valid_blobs++;
	int blob_ind = 1;
	int blob_count = 0;
	while (blob_count != valid_blobs) {
		int param = 255.0*(blob_count/(valid_blobs-1.0));
		if (blobs[blob_ind].valid) {
			cv::rectangle(mask_cpy, Point2i(blobs[blob_ind].min_j,blobs[blob_ind].min_i),
					Point2i(blobs[blob_ind].max_j,blobs[blob_ind].max_i), Scalar(0,param,255-param));
			blob_count++;
		}
		blob_ind++;
	}
	return mask_cpy;
}

void blobAnalysis(Mat skin_mask) {
	int max_blob_size = 0;
	int max_size0 = 0;
	int max_size1 = 0;

	// initialize blob analysis
	for (int i=0; i<BLOBS_SIZE; i++)
		blobs[i].valid = 0;

	// blobs[0] is reserved for the optimal blob
	while (!free_labels.empty()) free_labels.pop();
	for (int i=1; i<BLOBS_SIZE; i++)
		free_labels.push(i);

	int rl_code0[RL_CODE_SIZE];
	int rl_code1[RL_CODE_SIZE];
	int rl_code_label0[RL_CODE_LABEL_SIZE];
	int rl_code_label1[RL_CODE_LABEL_SIZE];
	for (int i=0; i<skin_mask.rows; i++) {
		int ind = 0;
		bool prev_pixel = 0;

		int ind0 = 0;
		int ind1 = 0;
		int cleared_labels_count = 0;

		if (i - 2*(i>>1)) {
			int other = 0;
			for (int j=0; ; j++) {
				int init_ind = ind;
				if (j<skin_mask.cols) {
					bool curr_pixel = !!skin_mask.at<uchar>(i,j);
					if (!prev_pixel && curr_pixel) {
						rl_code1[ind] = j;
						rl_code_label1[ind/2] = 0;
						ind++;
					}
					if (prev_pixel && !curr_pixel) rl_code1[ind++] = j-1;
					if (curr_pixel && (j==(skin_mask.cols-1))) rl_code1[ind++] = j;
					prev_pixel = curr_pixel;
				} else if (j==skin_mask.cols) {
					rl_code1[ind] = 2047;
					rl_code1[ind+1] = 2047;
					ind += 2;
					other++;
				} else {
					ind += 2;
					other++;
				}
				bool finished_row = blobAnalysisTwoPartialLines(ind0, rl_code0, rl_code_label0,
						ind1, rl_code1, rl_code_label1, cleared_labels_count,
						i, (init_ind+1)/2, skin_mask.cols);
				if (finished_row) break;
			}
			if (other > 10) {
				cout << "other : " << other << endl;
				for (int k=0; k<RL_CODE_SIZE; k++) {
					cout << rl_code0[k] << " ";
					if (rl_code0[k] == 2047) break;
				}
				cout << endl;
				for (int k=0; k<RL_CODE_SIZE; k++) {
					cout << rl_code1[k] << " ";
					if (rl_code1[k] == 2047) break;
				}
				cout << endl;
				for (int k=0; k<RL_CODE_LABEL_SIZE; k++) {
					cout << rl_code_label0[k] << " ";
					if (rl_code0[2*k] == 2047) break;
				}
				cout << endl;
				for (int k=0; k<RL_CODE_LABEL_SIZE; k++) {
					cout << rl_code_label1[k] << " ";
					if (rl_code1[2*k] == 2047) break;
				}
				cout << endl;
			}
		} else {
			for (int j=0; j<skin_mask.cols; j++) {
				bool curr_pixel = !!skin_mask.at<uchar>(i,j);
				if (!prev_pixel && curr_pixel) {
					rl_code0[ind] = j;
					rl_code_label0[ind/2] = 0;
					ind++;
				}
				if (prev_pixel && !curr_pixel) rl_code0[ind++] = j-1;
				if (curr_pixel && (j==(skin_mask.cols-1))) rl_code0[ind++] = j;
				prev_pixel = curr_pixel;
			}
			rl_code0[ind] = 2047;
			if (i!=0)
				blobAnalysisTwoLines(rl_code1, rl_code_label1, rl_code0, rl_code_label0, i, skin_mask.cols);

		}
		if (i!=0)
			max_blob_size = max(max_blob_size, (int) (BLOBS_SIZE-free_labels.size()));
	}
	cout << "max_blob_size " << max_blob_size << endl;
}

int main( int argc, const char** argv )
{
	VideoCapture capture(-1); // use webcam
	Mat frame;

	if(capture.isOpened()) {
	    int fps = 30;

	    int width = capture.get(CV_CAP_PROP_FRAME_WIDTH);
	    int height = capture.get(CV_CAP_PROP_FRAME_HEIGHT);
	    cout << "FPS: " << fps << ", width: " << width << ", height: " << height << endl;

	    bool enable = false;
		while(true) {
		    cv::namedWindow("YCrCb thresholds");
		    cv::createTrackbar("min Y", "YCrCb thresholds", &MIN_Y, 255);
		    cv::createTrackbar("max Y", "YCrCb thresholds", &MAX_Y, 255);
		    cv::createTrackbar("min Cr", "YCrCb thresholds", &MIN_CR, 255);
		    cv::createTrackbar("max Cr", "YCrCb thresholds", &MAX_CR, 255);
		    cv::createTrackbar("min Cb", "YCrCb thresholds", &MIN_CB, 255);
		    cv::createTrackbar("max Cb", "YCrCb thresholds", &MAX_CB, 255);

			capture >> frame;

			//cv::blur(frame, frame, Size(5,5));
			cv::medianBlur(frame, frame, 9);
			Mat skin_mask = skinMask(frame.clone());

			blobAnalysis(skin_mask);
			printf("blob analysis: %d (%d,%d) (%d,%d)\n", blobs[0].count, blobs[0].min_i, blobs[0].min_j, blobs[0].max_i, blobs[0].max_j);
			cv::Mat skin_mask2 = skin_mask.clone();
			cv::rectangle(skin_mask2, Point2i(blobs[0].min_j,blobs[0].min_i), Point2i(blobs[0].max_j,blobs[0].max_i), Scalar(127));
			cv::rectangle(frame, Point2i(blobs[0].min_j,blobs[0].min_i), Point2i(blobs[0].max_j,blobs[0].max_i), Scalar(255,0,0));
			//imshow("blob analysis frame", frame);

			//skin_mask2 = drawBlobs(skin_mask);
			imshow("blob analysis skin mask", skin_mask2);

			int key = waitKey(10);
			if((char)key == 'q') { break; }
	    }
	}
}
