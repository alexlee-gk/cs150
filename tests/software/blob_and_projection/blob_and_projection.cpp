#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <iostream>
#include <stdio.h>
#include <queue>
#include <string>

using namespace std;
using namespace cv;

static int MIN_Y = 0, MAX_Y = 256, MIN_CR = 133, MAX_CR = 159, MIN_CB = 85, MAX_CB = 135;
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

const static int BLOBS_SIZE = 256;
const static int MAX_ARRAY_SIZE = 1024*16;
struct Blob {
	bool valid;
	int count;
	int min_i, max_i;
	int min_j, max_j;
};
Blob blobs[BLOBS_SIZE];
queue<int> free_labels;

// merges blob1 into blob0
void merge_blobs(Blob& blob0, Blob& blob1) {
	blob0.count += blob1.count;
	blob0.min_i = min(blob0.min_i, blob1.min_i);
	blob0.max_i = max(blob0.max_i, blob1.max_i);
	blob0.min_j = min(blob0.min_j, blob1.min_j);
	blob0.max_j = max(blob0.max_j, blob1.max_j);
	blob1.valid = 0;
}

void update_optimal_blob(const Blob& blob) {
	if (!blobs[0].valid || blob.count > blobs[0].count)
		blobs[0] = blob;
}

void foo(int* rl_code0, int* rl_code_label0, int* rl_code1, int* rl_code_label1, int row1, int cols) {
	int ind0 = 0;
	int ind1 = 0;
	bool rl_code0_end = (rl_code0[ind0*2]==-1);
	bool rl_code1_end = (rl_code1[ind1*2]==-1);
	while (!(rl_code0_end && rl_code1_end)) {
		int s0 = rl_code0_end ? cols+1 : rl_code0[ind0*2];
		int e0 = rl_code0_end ? cols+2 : rl_code0[ind0*2+1];
		int s1 = rl_code1_end ? cols+1 : rl_code1[ind1*2];
		int e1 = rl_code1_end ? cols+2 : rl_code1[ind1*2+1];
		bool overlap = ((s1<(e0+2)) && (s0<(e1+2)));
		//cout << overlap << "\t" << " " << s0 << " " << e0 << " " << s1 << " " << e1 << endl;
		if (overlap) {
			if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]!=0) {
				rl_code_label0[ind0] = rl_code_label1[ind1];
				blobs[rl_code_label1[ind1]].count += e0-s0+1;
				blobs[rl_code_label1[ind1]].min_j = min(blobs[rl_code_label1[ind1]].min_j, s0);
				blobs[rl_code_label1[ind1]].max_j = max(blobs[rl_code_label1[ind1]].max_j, e0);
				blobs[rl_code_label1[ind1]].min_i = min(blobs[rl_code_label1[ind1]].min_i, row1-1);
				blobs[rl_code_label1[ind1]].max_i = row1;
				update_optimal_blob(blobs[rl_code_label1[ind1]]);
			} else if (rl_code_label0[ind0]!=0 && rl_code_label1[ind1]==0) {
				rl_code_label1[ind1] = rl_code_label0[ind0];
				blobs[rl_code_label0[ind0]].count += e1-s1+1;
				blobs[rl_code_label0[ind0]].min_j = min(blobs[rl_code_label0[ind0]].min_j, s1);
				blobs[rl_code_label0[ind0]].max_j = max(blobs[rl_code_label0[ind0]].max_j, e1);
				blobs[rl_code_label0[ind0]].min_i = min(blobs[rl_code_label0[ind0]].min_i, row1);
				blobs[rl_code_label0[ind0]].max_i = row1;
				update_optimal_blob(blobs[rl_code_label0[ind0]]);
			} else if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e0-s0+e1-s1+2;
				blobs[new_label].min_j = min(s0,s1);
				blobs[new_label].max_j = max(e0,e1);
				blobs[new_label].min_i = row1-1;
				blobs[new_label].max_i = row1;
				update_optimal_blob(blobs[new_label]);
			} else {
				if (rl_code_label0[ind0] > rl_code_label1[ind1]) {
					int cleared_label = rl_code_label0[ind0];
					merge_blobs(blobs[rl_code_label1[ind1]], blobs[cleared_label]);
					rl_code_label0[ind0] = rl_code_label1[ind1];
					free_labels.push(cleared_label);
					update_optimal_blob(blobs[rl_code_label1[ind1]]);
				} else if (rl_code_label0[ind0] < rl_code_label1[ind1]) {
					int cleared_label = rl_code_label1[ind1];
					merge_blobs(blobs[rl_code_label0[ind0]], blobs[cleared_label]);
					rl_code_label1[ind1] = rl_code_label0[ind0];
					free_labels.push(cleared_label);
					update_optimal_blob(blobs[rl_code_label0[ind0]]);
				}
			}
		} else {
			if (s0<cols && rl_code_label0[ind0]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e0-s0+1;
				blobs[new_label].min_j = s0;
				blobs[new_label].max_j = e0;
				blobs[new_label].min_i = row1-1;
				blobs[new_label].max_i = row1-1;
				update_optimal_blob(blobs[new_label]);
			}
			if (s1<cols && rl_code_label1[ind1]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e1-s1+1;
				blobs[new_label].min_j = s1;
				blobs[new_label].max_j = e1;
				blobs[new_label].min_i = row1;
				blobs[new_label].max_i = row1;
				update_optimal_blob(blobs[new_label]);
			}
		}

		if (rl_code1_end) ind0++;
		else if (rl_code0_end) ind1++;
		else {
			int s0_next = (rl_code0[ind0*2+2]==-1) ? cols+1 : rl_code0[ind0*2+2];
			int s1_next = (rl_code1[ind1*2+2]==-1) ? cols+1 : rl_code1[ind1*2+2];
			if (s0_next <= s1_next) ind0++;
			else ind1++;
		}
		rl_code0_end = (rl_code0[ind0*2]==-1);
		rl_code1_end = (rl_code1[ind1*2]==-1);
	}
}

void blobAnalysis(Mat skin_mask) {
	// initialize blob analysis
	for (int i=0; i<BLOBS_SIZE; i++)
		blobs[i].valid = 0;
	// blobs[0] is reserved for the optimal blob
	while (!free_labels.empty()) free_labels.pop();
	for (int i=1; i<BLOBS_SIZE; i++)
		free_labels.push(i);

	int rl_code[MAX_ARRAY_SIZE];
	int rl_code0[MAX_ARRAY_SIZE];
	int rl_code1[MAX_ARRAY_SIZE];
	int rl_code_label[MAX_ARRAY_SIZE];
	int rl_code_label0[MAX_ARRAY_SIZE];
	int rl_code_label1[MAX_ARRAY_SIZE];
	for (int i=0; i<skin_mask.rows; i++) {
		int ind = 0;
		bool prev_pixel = 0;
		for (int j=0; j<skin_mask.cols; j++) {
			bool curr_pixel = !!skin_mask.at<uchar>(i,j);
			if (!prev_pixel && curr_pixel) {
				rl_code[ind] = j;
				rl_code_label[ind] = 0;
				ind++;
			}
			if (prev_pixel && !curr_pixel) rl_code[ind++] = j-1;
			prev_pixel = curr_pixel;
		}
		if (ind - 2*(ind>>1)) rl_code[ind++] = skin_mask.cols-1;
		rl_code[ind] = -1;

		if (i==0) {
			memcpy(rl_code1, rl_code, MAX_ARRAY_SIZE);
			memcpy(rl_code_label1, rl_code_label, MAX_ARRAY_SIZE);
		} else {
			memcpy(rl_code0, rl_code1, MAX_ARRAY_SIZE);
			memcpy(rl_code1, rl_code, MAX_ARRAY_SIZE);
			memcpy(rl_code_label0, rl_code_label1, MAX_ARRAY_SIZE);
			memcpy(rl_code_label1, rl_code_label, MAX_ARRAY_SIZE);

			foo(rl_code0, rl_code_label0, rl_code1, rl_code_label1, i, skin_mask.cols);

//					int size0 = 0;
//					for (size0=0; size0<MAX_ARRAY_SIZE; size0++)
//						if (rl_code0[size0] == -1) break;
//					size0 /= 2;
//					int size1 = 0;
//					for (size1=0; size1<MAX_ARRAY_SIZE; size1++)
//						if (rl_code1[size1] == -1) break;
//					size1 /= 2;
//					for (int k=0; k<2*size0; k++) cout << rl_code0[k] << " "; cout << endl;
//					for (int k=0; k<2*size1; k++) cout << rl_code1[k] << " "; cout << endl;
//					for (int k=0; k<size0; k++) cout << rl_code_label0[k] << " "; cout << endl;
//					for (int k=0; k<size1; k++) cout << rl_code_label1[k] << " "; cout << endl;
		}
	}
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
			cv::rectangle(skin_mask, Point2i(blobs[0].min_j,blobs[0].min_i), Point2i(blobs[0].max_j,blobs[0].max_i), Scalar(127));
			imshow("blob analysis skin mask", skin_mask);
			cv::rectangle(frame, Point2i(blobs[0].min_j,blobs[0].min_i), Point2i(blobs[0].max_j,blobs[0].max_i), Scalar(255,0,0));
			imshow("blob analysis frame", frame);

		    float f = 640; // focal length
			float h = blobs[0].max_i - blobs[0].min_i; // face height in pixel space
			float H = 0.25; // face height in centimeters
			float X = -(blobs[0].min_j + 0.5*(blobs[0].max_j - blobs[0].min_j) - width/2.0)*H/h;
			float Y = -(blobs[0].min_i + 0.75*(blobs[0].max_i - blobs[0].min_i) - height/2.0)*H/h;
			float Z = f*H/h;
			printf("%4.2f %4.2f %4.2f\n", X,Y,Z);

			vector<Point3d> lines;
			lines.push_back(Point3d(-0.05,0,-0.10));
			lines.push_back(Point3d(0.05,0,-0.10));
			lines.push_back(Point3d(0.05,0,-0.10));
			lines.push_back(Point3d(0.05,0,-0.20));
			lines.push_back(Point3d(0.05,0,-0.20));
			lines.push_back(Point3d(-0.05,0,-0.20));
			lines.push_back(Point3d(-0.05,0,-0.20));
			lines.push_back(Point3d(-0.05,0,-0.10));

			Mat projection = Mat::zeros(480,640,CV_8UC3);
			for (int i=0; i<lines.size()/2; i++) {
				Point2i pt0, pt1;
				pt0.x = -((Z*lines[2*i].x - lines[2*i].z*X)/(Z-lines[2*i].z))*640/0.143 + width/2.0;
				pt0.y = -((Z*lines[2*i].y - lines[2*i].z*Y)/(Z-lines[2*i].z))*640/0.143 + height/2.0;
				pt1.x = -((Z*lines[2*i+1].x - lines[2*i+1].z*X)/(Z-lines[2*i+1].z))*640/0.143 + width/2.0;
				pt1.y = -((Z*lines[2*i+1].y - lines[2*i+1].z*Y)/(Z-lines[2*i+1].z))*640/0.143 + height/2.0;
				cv::line(projection, pt0, pt1, Scalar(255,0,0));
			}
			imshow("projection", projection);

			int key = waitKey(10);
			if((char)key == 'q') { break; }
	    }
	}
}
