`include "blob.vh"

module mergeBlobs(blob0, blob1, merged_blob0, merged_blob1);
	// merges blob1 into blob0
	input [`BLOB_WIDTH-1:0] blob0;
	input [`BLOB_WIDTH-1:0] blob1;
	output [`BLOB_WIDTH-1:0] merged_blob0;
	output [`BLOB_WIDTH-1:0] merged_blob1;

	assign merged_blob0[`VALID]       = blob0[`VALID];
	assign merged_blob0[`EQ_IND]      = blob0[`EQ_IND];
	assign merged_blob0[`COUNT]       = blob0[`COUNT] + blob1[`COUNT];
	assign merged_blob0[`MIN_I]       = (blob0[`MIN_I] < blob1[`MIN_I]) ? blob0[`MIN_I] : blob1[`MIN_I];
	assign merged_blob0[`MAX_I]       = (blob0[`MAX_I] > blob1[`MAX_I]) ? blob0[`MAX_I] : blob1[`MAX_I];
	assign merged_blob0[`MIN_J]       = (blob0[`MIN_J] < blob1[`MIN_J]) ? blob0[`MIN_J] : blob1[`MIN_J];
	assign merged_blob0[`MAX_J]       = (blob0[`MAX_J] > blob1[`MAX_J]) ? blob0[`MAX_J] : blob1[`MAX_J];
	assign merged_blob0[`FIRST_CLEAR] = blob0[`FIRST_CLEAR];

	assign merged_blob1[`VALID]       = 1'b0;
	assign merged_blob1[`EQ_IND]      = blob0[`EQ_IND];
	assign merged_blob1[`COUNT]       = blob1[`COUNT];
	assign merged_blob1[`MIN_I]       = blob1[`MIN_I];
	assign merged_blob1[`MAX_I]       = blob1[`MAX_I];
	assign merged_blob1[`MIN_J]       = blob1[`MIN_J];
	assign merged_blob1[`MAX_J]       = blob1[`MAX_J];
	assign merged_blob1[`FIRST_CLEAR] = blob1[`FIRST_CLEAR];

	/*
	assign merged_blob0 = {
		blob0[`VALID],
		blob0[`EQ_IND],
		blob0[`COUNT] + blob1[`COUNT],
		(blob0[`MIN_I] < blob1[`MIN_I]) ? blob0[`MIN_I] : blob1[`MIN_I],
		(blob0[`MAX_I] > blob1[`MAX_I]) ? blob0[`MAX_I] : blob1[`MAX_I],
		(blob0[`MIN_J] < blob1[`MIN_J]) ? blob0[`MIN_J] : blob1[`MIN_J],
		(blob0[`MAX_J] > blob1[`MAX_J]) ? blob0[`MAX_J] : blob1[`MAX_J],
		blob0[`FIRST_CLEAR]
	};
	
	assign merged_blob1 = {
		1'b0,
		blob0[`EQ_IND],
		blob1[`COUNT],
		blob1[`MIN_I],
		blob1[`MAX_I],
		blob1[`MIN_J],
		blob1[`MAX_J],
		blob1[`FIRST_CLEAR]
	};
	*/
		
endmodule

