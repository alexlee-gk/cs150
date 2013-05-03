/*****************************************************************************
* Filename:          /home/cc/cs150/sp13/class/cs150-ax/dviproj/drivers/vgain_v1_00_a/src/vgain_selftest.c
* Version:           1.00.a
* Description:       
* Date:              Sat Apr  6 14:15:53 2013 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#include "xparameters.h"
#include "vgain.h"

/* IMPORTANT:
*  In order to run this self test, you need to modify the value of following
*  micros according to the slot ID defined in xparameters.h file. 
*/
#define input_slot_id   XPAR_FSL_VGAIN_0_INPUT_SLOT_ID
#define output_slot_id  XPAR_FSL_VGAIN_0_OUTPUT_SLOT_ID

XStatus VGAIN_SelfTest()
{
	 unsigned int input_0[1];     
	 unsigned int output_0[1];     

	 //Initialize your input data over here: 
	 input_0[0] = 12345;     

	 //Call the macro with instance specific slot IDs
	 vgain(
		 input_slot_id,
		 output_slot_id,
		 input_0,      
		 output_0       
		 );

	 if (output_0[0] != 12345)
		 return XST_FAILURE;
	 if (output_0[0] != 12345)
		 return XST_FAILURE;

	 return XST_SUCCESS;
}
