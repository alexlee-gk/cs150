#include <iostream>	
#include <stdio.h>
#include <stdlib.h>
#include <queue>
	
using namespace std;

const static int BLOBS_SIZE = 256;
struct Blob {
	bool valid;
	int count;
};
Blob blobs[BLOBS_SIZE];
queue<int> free_labels;

// merges blob1 into blob0
void merge_blobs(Blob& blob0, Blob& blob1) {
	blob0.count += blob1.count;
	blob1.valid = 0;
}

void update_optimal_blob(const Blob& blob) {
	if (blob.count > blobs[0].count)
		blobs[0] = blob;
}

void foo(int* rl_code0, int* rl_code_label0, int size0, int* rl_code1, int* rl_code_label1, int size1) {
	int ind0 = 0;
	int ind1 = 0;
	while (ind0<size0 && ind1<size1) {
		int s0 = rl_code0[ind0*2];
		int e0 = rl_code0[ind0*2+1];
		int s1 = rl_code1[ind1*2];
		int e1 = rl_code1[ind1*2+1];
		bool overlap = (s1<e0+2 & s0<e1+2);
		//cout << overlap << "\t" << " " << s0 << " " << e0 << " " << s1 << " " << e1 << endl;
		if (overlap) {
			if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]!=0) {
				rl_code_label0[ind0] = rl_code_label1[ind1];
				blobs[rl_code_label1[ind1]].count += e0-s0+1;
				update_optimal_blob(blobs[rl_code_label1[ind1]]);
			} else if (rl_code_label0[ind0]!=0 && rl_code_label1[ind1]==0) {
				rl_code_label1[ind1] = rl_code_label0[ind0];
				blobs[rl_code_label0[ind0]].count += e1-s1+1;
				update_optimal_blob(blobs[rl_code_label0[ind0]]);
			} else if (rl_code_label0[ind0]==0 && rl_code_label1[ind1]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e0-s0+e1-s1+2;
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
			if (rl_code_label0[ind0]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label0[ind0] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e0-s0+1;
				update_optimal_blob(blobs[new_label]);
			}
			if (rl_code_label1[ind1]==0) {
				int new_label = free_labels.front();
				free_labels.pop();
				rl_code_label1[ind1] = new_label;
				blobs[new_label].valid = 1;
				blobs[new_label].count = e1-s1+1;
				update_optimal_blob(blobs[new_label]);
			}
		}

		if (e0<e1) ind0++;
		else ind1++;
	}
}

int main() {
	const int size0 = 4;
	const int size1 = 4;
	const int size2 = 3;
	const int size3 = 2;
	int rl_code0[size0*2] = {0,1,5,5,7,11,14,15};
	int rl_code1[size1*2] = {3,3,6,7,9,11,13,13};
	int rl_code2[size2*2] = {2,4,13,13,15,15};
	int rl_code3[size3*2] = {0,0,3,14};
	int rl_code_label0[size0] = {0,0,0,0};
	int rl_code_label1[size1] = {0,0,0,0};
	int rl_code_label2[size2] = {0,0,0};
	int rl_code_label3[size3] = {0,0};

	for (int i=0; i<BLOBS_SIZE; i++)
		blobs[i].valid = 0;

	// blobs[0] is reserved for the optimal blob
	for (int i=1; i<BLOBS_SIZE; i++)
		free_labels.push(i);

	foo(rl_code0, rl_code_label0, size0, rl_code1, rl_code_label1, size1);

	for (int i=0; i<size0; i++)
		cout << rl_code_label0[i] << " ";
	cout << endl;

	for (int i=0; i<size1; i++)
		cout << rl_code_label1[i] << " ";
	cout << endl;

	for (int i=0; i<BLOBS_SIZE; i++) {
		if (blobs[i].valid)	cout << blobs[i].count << " ";
		else cout << 0 << " ";	
	}
	cout << endl;


	foo(rl_code1, rl_code_label1, size1, rl_code2, rl_code_label2, size2);

	for (int i=0; i<size1; i++)
		cout << rl_code_label1[i] << " ";
	cout << endl;

	for (int i=0; i<size2; i++)
		cout << rl_code_label2[i] << " ";
	cout << endl;

	for (int i=0; i<BLOBS_SIZE; i++) {
		if (blobs[i].valid)	cout << blobs[i].count << " ";
		else cout << 0 << " ";	
	}
	cout << endl;


	foo(rl_code2, rl_code_label2, size2, rl_code3, rl_code_label3, size3);

	for (int i=0; i<size2; i++)
		cout << rl_code_label2[i] << " ";
	cout << endl;

	for (int i=0; i<size3; i++)
		cout << rl_code_label3[i] << " ";
	cout << endl;

	for (int i=0; i<BLOBS_SIZE; i++) {
		if (blobs[i].valid)	cout << blobs[i].count << " ";
		else cout << 0 << " ";	
	}
	cout << endl;
	
	cout << "OPTIMAL BLOB" << endl;
	cout << blobs[0].count << endl;

	return 0;
}

