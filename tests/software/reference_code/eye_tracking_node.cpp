#include "utils/my_exceptions.h"
#include <ros/ros.h>
#include <pcl/point_types.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <cv_bridge/cv_bridge.h>
#include <pcl/ros/conversions.h>
#include "clouds/utils_pcl.h"
#include "clouds/cloud_ops.h"
#include "get_table2.h"
#include <cmath>
#include "utils/config.h"
#include <tf/transform_broadcaster.h>
#include <geometry_msgs/PolygonStamped.h>
#include "utils/conversions.h"
#include <boost/thread.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "utils/utils_vector.h"

using namespace std;
using namespace Eigen;

struct LocalConfig : Config {
  static std::string inputTopic;
  static std::string nodeNS;
  static bool trackbars;

  LocalConfig() : Config() {
    params.push_back(new Parameter<string>("inputTopic", &inputTopic, "input topic"));
    params.push_back(new Parameter<string> ("nodeNS", &nodeNS, "node namespace"));
    params.push_back(new Parameter<bool>("trackbars", &trackbars, "show hue trackbars"));
  }
};

string LocalConfig::inputTopic = "/drop/kinect1/points";
string LocalConfig::nodeNS = "/preprocessor/kinect1";
bool LocalConfig::trackbars = false;

static int MIN_Y = 0, MAX_Y = 256, MIN_CR = 140, MAX_CR = 159, MIN_CB = 85, MAX_CB = 135;

void setParamLoop(ros::NodeHandle& nh) {

	while (nh.ok()) {
		if (LocalConfig::trackbars) {
			// Needs this to update the opencv windows
			char key = cv::waitKey(20);
			if (key == 'q')
				exit(0);

			cv::namedWindow("YCrCb trackbars");
			cv::createTrackbar("Y min", "YCrCb trackbars", &MIN_Y, 256);
			cv::createTrackbar("Y max", "YCrCb trackbars", &MAX_Y, 256);
			cv::createTrackbar("Cr min", "YCrCb trackbars", &MIN_CR, 256);
			cv::createTrackbar("Cr max", "YCrCb trackbars", &MAX_CR, 256);
			cv::createTrackbar("Cb min", "YCrCb trackbars", &MIN_CB, 256);
			cv::createTrackbar("Cb max", "YCrCb trackbars", &MAX_CB, 256);
		}
		sleep(0.2);
	}
}

#define KERNEL_TYPE ushort
#define KERNEL_CVTYPE CV_16UC1
#define KERNEL_MAX 65535
//#define KERNEL_TYPE uchar
//#define KERNEL_CVTYPE CV_8UC1
//#define KERNEL_MAX 255

class PreprocessorNode {
public:
  ros::NodeHandle& m_nh;
  ros::Publisher m_imagePub;
  ros::Publisher m_maskPub;
  ros::Publisher m_labelPub;
  ros::Subscriber m_sub;

  cv::Mat cc_label_init;
  cv::Mat fwd_kernel;
  cv::Mat bwd_kernel;

  cv::Mat subsample(const cv::Mat& src, int subsample_rate) {
  	cv::Mat src_sampled(src.rows/subsample_rate,src.cols/subsample_rate,CV_8UC3);
		for (int i=0; i<src_sampled.rows; i++) {
			for (int j=0; j<src_sampled.cols; j++) {
				cv::Scalar m = cv::mean(src(cv::Range(i*subsample_rate,(i+1)*subsample_rate), cv::Range(j*subsample_rate,(j+1)*subsample_rate)));
				src_sampled.at<cv::Vec3b>(i,j)[0] = (uchar) m[0];
				src_sampled.at<cv::Vec3b>(i,j)[1] = (uchar) m[1];
				src_sampled.at<cv::Vec3b>(i,j)[2] = (uchar) m[2];
			}
		}
		return src_sampled;
  }

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

  cv::Mat dilate(const cv::Mat& src, const cv::Mat& kernel) {
  	cv::Mat dst(src.rows, src.cols, src.type());

  	for (int i=0; i<src.rows; i++) {
  		int i_offset0 = 0, i_offset1 = 0;
			if (i==0) i_offset0 = 1;
			if (i==src.rows-1) i_offset1 = -1;
			for (int j=0; j<src.cols; j++) {
    		int j_offset0 = 0, j_offset1 = 0;
    		if (j==0) j_offset0 = 1;
    		if (j==src.cols-1) j_offset1 = -1;

				cv::Mat m = src(cv::Range(i-1+i_offset0,i+2+i_offset1), cv::Range(j-1+j_offset0,j+2+j_offset1))
						& kernel(cv::Range(i_offset0,3+i_offset1), cv::Range(j_offset0,3+j_offset1));

				vector<KERNEL_TYPE> v;
				for (int ii=0; ii<m.rows; ii++)
					for (int jj=0; jj<m.cols; jj++)
						v.push_back(m.at<KERNEL_TYPE>(ii,jj));

				dst.at<KERNEL_TYPE>(i,j) = max(v);
    	}
  	}
  	return dst;
  }

  // http://link.springer.com/chapter/10.1007%2F978-3-540-45234-8_108?LI=true#page-1
  cv::Mat connected_components_labeling(const cv::Mat& mask) {
    cv::Mat mask_16uc = mask.clone();
    mask.convertTo(mask_16uc, KERNEL_CVTYPE, KERNEL_MAX/255);

		cv::Mat cc_label = cc_label_init.clone();
		cc_label &= mask_16uc;
		cv::Mat cc_label_old;
		while (true) {
			cc_label_old = cc_label.clone();
			cc_label = dilate(cc_label,fwd_kernel);
			cc_label &= mask_16uc;
			cc_label = dilate(cc_label,bwd_kernel);
			cc_label &= mask_16uc;

			cv::Mat non_equal;
			cv::compare(cc_label_old, cc_label, non_equal, cv::CMP_NE);
			if (cv::countNonZero(non_equal)==0) break;
		}

		return cc_label;
  }

  void largest_connected_component_bounding_box(const cv::Mat& cc_label, cv::Point2i& vertex0, cv::Point2i& vertex1) {
		int label_count[KERNEL_MAX];
		int label_min_i[KERNEL_MAX];
		int label_max_i[KERNEL_MAX];
		int label_min_j[KERNEL_MAX];
		int label_max_j[KERNEL_MAX];
		for (int label=0; label<KERNEL_MAX; label++) {
			label_count[label] = 0;
			label_min_i[label] = cc_label.rows-1;
			label_max_i[label] = 0;
			label_min_j[label] = cc_label.cols-1;
			label_max_j[label] = 0;
		}
		for (int i=0; i<cc_label.rows; i++)
			for (int j=0; j<cc_label.cols; j++) {
				int label = (int)cc_label.at<KERNEL_TYPE>(i,j);
				if (label) {
					label_count[label]++;
					label_min_i[label] = min(label_min_i[label],i);
					label_max_i[label] = max(label_max_i[label],i);
					label_min_j[label] = min(label_min_j[label],j);
					label_max_j[label] = max(label_max_j[label],j);
				}
			}
		vector<int> label_count_v(label_count,label_count+KERNEL_MAX);
		int label = argMax(label_count_v);
		vertex0 = cv::Point2i(label_min_j[label],label_min_i[label]);
		vertex1 = cv::Point2i(label_max_j[label],label_max_i[label]);
  }

  void callback(const sensor_msgs::PointCloud2& msg_in) {
    ColorCloudPtr cloud_in(new ColorCloud());
    pcl::fromROSMsg(msg_in, *cloud_in);
    cv::Mat src = toCVMatImage(cloud_in);
    /////////////// input processing ends ///////////////

    /////////////// face detection algorithm begins ///////////////
    cv::Mat src_sampled = subsample(src, 4);

    cv::Mat mask = skinMask(src_sampled);

    cv::Mat cc_label = connected_components_labeling(mask);

    cv::Point2i vertex0, vertex1;
    largest_connected_component_bounding_box(cc_label, vertex0, vertex1);
    /////////////// face detection algorithm ends ///////////////

    /////////////// output processing begins ///////////////
    cv::rectangle(src_sampled, vertex0, vertex1, cv::Scalar(255,0,0));
		cv_bridge::CvImage image_msg;
		image_msg.header = msg_in.header;
		image_msg.encoding = sensor_msgs::image_encodings::TYPE_8UC3;
		image_msg.image = src_sampled;
		m_imagePub.publish(image_msg.toImageMsg());

		cv_bridge::CvImage mask_msg;
		mask_msg.header = msg_in.header;
		mask_msg.encoding = sensor_msgs::image_encodings::TYPE_8UC1;
		mask_msg.image = mask;
		m_maskPub.publish(mask_msg.toImageMsg());

		cv_bridge::CvImage label_msg;
		label_msg.header = msg_in.header;
		label_msg.encoding = sensor_msgs::image_encodings::TYPE_16UC1;
		label_msg.image = cc_label;
    m_labelPub.publish(label_msg.toImageMsg());
  }

  PreprocessorNode(ros::NodeHandle& nh) :
    m_nh(nh),
    m_imagePub(nh.advertise<sensor_msgs::Image> (LocalConfig::nodeNS + "/image", 5)),
    m_maskPub(nh.advertise<sensor_msgs::Image> (LocalConfig::nodeNS + "/mask", 5)),
    m_labelPub(nh.advertise<sensor_msgs::Image> (LocalConfig::nodeNS + "/label", 5)),
    m_sub(nh.subscribe(LocalConfig::inputTopic, 1, &PreprocessorNode::callback, this)),
    cc_label_init(120,160,KERNEL_CVTYPE),
    fwd_kernel(3,3,KERNEL_CVTYPE),
    bwd_kernel(3,3,KERNEL_CVTYPE)
    {
  		for (int i=0; i<cc_label_init.rows; i++)
				for (int j=0; j<cc_label_init.cols; j++) {
					cc_label_init.at<KERNEL_TYPE>(i,j) = cc_label_init.cols*i+j;
				}

  		fwd_kernel.at<KERNEL_TYPE>(0,0) = KERNEL_MAX;
  		fwd_kernel.at<KERNEL_TYPE>(1,0) = KERNEL_MAX;
  		fwd_kernel.at<KERNEL_TYPE>(2,0) = KERNEL_MAX;
  		fwd_kernel.at<KERNEL_TYPE>(0,1) = KERNEL_MAX;
  		fwd_kernel.at<KERNEL_TYPE>(1,1) = KERNEL_MAX;
  		fwd_kernel.at<KERNEL_TYPE>(2,1) = 0;
  		fwd_kernel.at<KERNEL_TYPE>(0,2) = 0;
  		fwd_kernel.at<KERNEL_TYPE>(1,2) = 0;
  		fwd_kernel.at<KERNEL_TYPE>(2,2) = 0;

  		bwd_kernel.at<KERNEL_TYPE>(0,0) = 0;
  		bwd_kernel.at<KERNEL_TYPE>(1,0) = 0;
  		bwd_kernel.at<KERNEL_TYPE>(2,0) = 0;
  		bwd_kernel.at<KERNEL_TYPE>(0,1) = 0;
  		bwd_kernel.at<KERNEL_TYPE>(1,1) = KERNEL_MAX;
  		bwd_kernel.at<KERNEL_TYPE>(2,1) = KERNEL_MAX;
  		bwd_kernel.at<KERNEL_TYPE>(0,2) = KERNEL_MAX;
  		bwd_kernel.at<KERNEL_TYPE>(1,2) = KERNEL_MAX;
  		bwd_kernel.at<KERNEL_TYPE>(2,2) = KERNEL_MAX;
    }
  };

int main(int argc, char* argv[]) {
  Parser parser;
  parser.addGroup(LocalConfig());
  parser.read(argc, argv);

  ros::init(argc, argv,"preprocessor");
  ros::NodeHandle nh(LocalConfig::nodeNS);

  boost::thread setParamThread(setParamLoop, nh);

  PreprocessorNode tp(nh);
  ros::spin();
}
