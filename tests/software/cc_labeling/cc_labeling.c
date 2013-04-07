#include <iostream>	
#include <stdio.h>
#include <stdlib.h>

#define H 5
#define W 5
#define MAX(a,b) \
	(((a)>(b))?(a):(b))
#define MAX5(a,b,c,d,e) \
	MAX(MAX(MAX((a),(b)),MAX((c),(d))),(e))
	
using namespace std;

void printMat(unsigned char src[H][W]) {
	int i,j;
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)src[i][j] << " ";
		cout << endl;
	}
	cout << endl;
}

void dilate(unsigned char src[H][W], unsigned char dst[H][W], int fwd) {
	int o = fwd?1:-1;
	
	int i,j;
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++) {
			dst[i][j] = (src[i][j]?MAX5(((i-o)<0 || (i-o)>=H || (j-o)<0 || (j-o)>=W)?0:src[i-o][j-o],
																  ((j-o)<0 || (j-o)>=W)?0:src[i][j-o],
																  ((i+o)<0 || (i+o)>=H || (j-o)<0 || (j-o)>=W)?0:src[i+o][j-o],
																  ((i-o)<0 || (i-o)>=H)?0:src[i-o][j],
																  src[i][j]):0);
		}
	}
}

void connected_components_labeling(unsigned char mask[H][W], unsigned char cc_label[H][W]) {
	int i,j;
	for (i=0; i<H; i++)
		for (j=0; j<W; j++)
			cc_label[i][j] = mask[i][j]?(i*W+j):0;
	
	//reg
	unsigned char cc_label_old[H][W];
	int fwd = 1;
	while (true) {
		for (i=0; i<H; i++)
			for (j=0; j<W; j++)
				cc_label_old[i][j] = cc_label[i][j];
		dilate(cc_label_old, cc_label, fwd);
		//printMat(cc_label_old);
		//printMat(cc_label);
		//exit(0);
		fwd = !fwd;
		
		int all_equal = 1;
		for (i=0; i<H; i++) {
			for (j=0; j<W; j++) {
				if (cc_label[i][j] != cc_label_old[i][j]) {
					all_equal = 0;
					break;
				}
			}
			if (!all_equal) break;
		}
		if (all_equal) break;
		
	}
}

int main() {
	unsigned char src[H][W];
	unsigned char dst[H][W];
	
	int i,j;
	/*for (i=0; i<H; i++)
		for (j=0; j<W; j++)
			src[i][j] = i*W+j;
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)src[i][j] << " ";
		cout << endl;
	}
	cout << endl;
	
	dilate(src,dst,1);
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)dst[i][j] << " ";
		cout << endl;
	}
	cout << endl;
	
	dilate(src,dst,0);
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)dst[i][j] << " ";
		cout << endl;
	}
	cout << endl;*/
	
	for (i=0; i<H; i++)
		for (j=0; j<W; j++)
			src[i][j] = 0;
	src[0][3] = 255;
	src[1][3] = 255;
	src[1][2] = 255;
	src[3][4] = 255;
	src[4][4] = 255;
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)src[i][j] << " ";
		cout << endl;
	}
	cout << endl;
	
	connected_components_labeling(src,dst);
	for (i=0; i<H; i++) {
		for (j=0; j<W; j++)
			cout << (int)dst[i][j] << " ";
		cout << endl;
	}
	
	return 0;
}

