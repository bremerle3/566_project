 /*

Various examples of AP_FIXED types

ap_[u]fixed<W,I,Q,O,N>
  W - Total Bit-width
  I - Number of Interger bits (number of fractional bits is W-I)
  Q - Quantization
      Full Explanations UG902 p345 (2012.2)
      AP_RND          Rounding to plus infinity
      AP_RND_ZERO     Rounding to zero
      AP_RND_MIN_INF  Rounding to minus  infinity
      AP_RND_INF      Rounding to infinity
      AP_RND_CONV     Convergent rounding
      AP_TRN          Truncation to minus infinity
      AP_TRN_ZERO     Truncation to zero (default)
  O - Overflow
      Full Explanations UG902 p347 (2012.2)
      AP_SAT          Saturation
      AP_SAT_ZERO     Saturation to zero
      AP_SAT_SYM      Symmetrical saturation
      AP_WRAP         Wrap around (default)
      AP_WRAP_SM      Sign magnitude wrap around

Examples:

// Unsigned, 10-bit, 2-bit decimal points, round to plus infinity, saturate
typedef ap_ufixed<10,8, AP_RND, AP_SAT> din1_t;

// Signed, 6-bit, 3-bit decimal points, round to plus infinity, wrap when saturating
typedef ap_fixed<6,3, AP_RND, AP_WRAP> din2_t;

// Signed, 22-bit, 5-bit decimal points, truncate to minus infinity, saturate
typedef ap_fixed<22,17, AP_TRN, AP_SAT> dint_t;

*/

#include "xapp_pid.h"

#ifndef PID_DEBUG
void PID_Controller(bool InitN, data_type coeff[6], data_type din[2], data_type dout[2])
#else
void PID_Controller(bool InitN, data_type coeff[6], data_type din[2], data_type dout[2], data_type *test_yd, data_type *test_yi)
#endif //#ifndef PID_DEBUG

{

	// previous PID states: Yd(n-1), X1(n-1), X2(n-1), Yi(n-1)
	static data_type   prev_x1, prev_x2, prev_yd, prev_yi;
	// current local states
	data_type w, e, y, x1, x2, yd, yi;
	// local variables
	data_type max_lim, min_lim, Gi, Gd, C, Gp, tmp;
	data_type pid_mult, pid_addsub, pid_mult2, pid_addsub2;
	
	// get PID input coefficients
	Gi = coeff[0]; 	Gd = coeff[1];
	C  = coeff[2];  Gp = coeff[3];
	max_lim = coeff[4]; min_lim = coeff[5];

	// get PID input signals
	w = din[0]; // effective input signal
	y = din[1]; // closed loop signal

	if (InitN==0)
	{
	  prev_yi = 0; // reset Integrator stage
	  prev_x2 = 0; 
	  prev_x1 = 0; // reset Derivative stage
	  prev_yd = 0;
	}

	// compute error signal E = W - Y
	pid_addsub = w - y;
	e          = (pid_addsub > max_lim) ? max_lim : pid_addsub;
	e          = (pid_addsub < min_lim) ? min_lim : e;

	pid_mult  = Gd * e;
	pid_mult2 = Gi * e;
	x1  = pid_mult;  // input signal of the derivative stage
	x2  = pid_mult2; // input signal of the integration stage

	// Derivation stage
	// Yd(n) = -C*Yd(n-1)+X1(n)-X1(n-1) = X1 - (prev_X1 + C*prev_Yd)
	pid_mult   = C * prev_yd;
	pid_addsub2= x1 - prev_x1; 
	pid_addsub = pid_addsub2 -pid_mult;
	yd         = pid_addsub;

	// Integrator  stage
	// Ti = X2(n) + X2(n-1) 
	// Yi(n) = CLIP( Yi(n-1) + Ti )    
	pid_addsub = prev_x2 + x2;
	pid_addsub2= prev_yi + pid_addsub;
	yi         = (pid_addsub2 > max_lim) ? max_lim : pid_addsub2;
	yi         = (pid_addsub2 < min_lim) ? min_lim : yi;

#ifdef PID_DEBUG
	*test_yd   = yd;
	*test_yi   = yi;
#endif

	// output signal U(n)
	pid_mult   = Gp * e;
    pid_addsub = yi + yd;
	pid_addsub2= pid_addsub + pid_mult;
	tmp        = (pid_addsub2 > max_lim) ? max_lim : pid_addsub2;
	tmp        = (pid_addsub2 < min_lim) ? min_lim : tmp;
    dout[0]    = tmp; // PID output
	dout[1]    = e;   // error reported as output

	// update internal PID states for the next iteration
	prev_x1 = x1; prev_x2 = x2;
	prev_yd = yd; prev_yi = yi;

	return;
}
