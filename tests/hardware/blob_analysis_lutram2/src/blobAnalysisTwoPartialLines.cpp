const static int BLOBS_SIZE = 512;
const static int MAX_RL_CODES = 512; // maximum number of rl codes per image line
const static int RL_CODE_SIZE = MAX_RL_CODES*2+1;
const static int RL_CODE_LABEL_SIZE = MAX_RL_CODES;

module blobAnalysisTwoPartialLines(
	input [10:0] ind0,
	input [10:0] rl_code0 [RL_CODE_SIZE-1:0],
	input [10:0] rl_code_label0 [RL_CODE_LABEL_SIZE-1:0],
	input [10:0] ind1,
	input [10:0] rl_code1 [RL_CODE_SIZE-1:0],
	input [10:0] rl_code_label1 [RL_CODE_LABEL_SIZE-1:0],
	input [10:0] cleared_labels_count,
	input [10:0] row1,
	input [10:0] valid_ind,
	input [10:0] cols,
	input [77:0]
	output reg [10:0] ind0_out,
	output reg [10:0] ind1_out,
	output reg [10:0] cleared_labels_count_out
);
	1
	11
	20
	11*4
	1
	
	77
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

  input clk;
  input we;
  output [76 : 0] dpo;
  input [8 : 0] a;
  input [76 : 0] d;
  input [8 : 0] dpra;
	
	always@(*) begin 
	
int& ind0, int* rl_code0, int* rl_code_label0,
		int& ind1, int* rl_code1, int* rl_code_label1,
		int cleared_labels_count, int row1, int valid_ind, int cols) {
	if ((ind1+2) > valid_ind) return false;
	bool rl_code0_end = (rl_code0[ind0*2]==-1);
	bool rl_code1_end = (rl_code1[ind1*2]==-1);
	if (rl_code0_end && rl_code1_end) return true;

	int s0 = rl_code0_end ? cols+1 : rl_code0[ind0*2];
	int e0 = rl_code0_end ? cols+2 : rl_code0[ind0*2+1];
	int s1 = rl_code1_end ? cols+1 : rl_code1[ind1*2];
	int e1 = rl_code1_end ? cols+2 : rl_code1[ind1*2+1];
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
		int s0_next = (rl_code0[ind0*2+2]==-1) ? cols+1 : rl_code0[ind0*2+2];
		int s1_next = (rl_code1[ind1*2+2]==-1) ? cols+1 : rl_code1[ind1*2+2];
		if (s0_next <= s1_next) ind0++;
		else ind1++;
	}
	rl_code0_end = (rl_code0[ind0*2]==-1);
	rl_code1_end = (rl_code1[ind1*2]==-1);

	return false;
}
