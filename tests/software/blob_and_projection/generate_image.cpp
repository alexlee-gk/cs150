/*
 * generate_image.cpp
 *
 *  Created on: May 1, 2013
 *      Author: alex
 */

#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>

#include <iostream>
#include <stdio.h>
#include <queue>
#include <string>

using namespace std;
using namespace cv;

int main( int argc, const char** argv )
{
	if (argc < 2) {
		printf("Error: provide the target filename as an input\n");
		return -1;
	}

	const int patch_rows = 6;
	const int patch_cols = 18;
	bool patch[patch_rows*patch_cols] = {
			0,0,0,0,1,1,1,1,1,0,0,1,1,1,0,0,0,0,
			0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,1,0,0,
			1,1,0,0,0,1,0,1,1,1,1,1,0,0,1,1,0,0,
			0,0,0,1,0,0,1,1,0,1,1,1,0,1,0,1,1,0,
			0,0,1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,1,
			1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1
	};

	Mat image = Mat::zeros(768, 1024, CV_8UC3);
	for (int i=0; i<patch_rows; i++) {
		for (int j=0; j<patch_cols; j++) {
			if (patch[i*patch_cols+j])
				image.at<Vec3b>(i,j) = Vec3b(0,255,0);
		}
	}

	string filename = string(argv[1]);
	printf("Saving generated image to %s\n", filename.c_str());
	imwrite(filename, image);
	return 0;
}


