#ifndef H_XAPP_PID_H
#define H_XAPP_PID_H

//#define PID_DOUBLEPREC

//#define PID_DEBUG


#define PID_FIXEDPOINT

#if defined(PID_FIXEDPOINT)

  // Define AP_FIXED types
  #include "ap_fixed.h"

  // 25-bit bit signed date, with
  typedef ap_fixed<25,10> data_type;

#define PID_THRESHOLD 0.2


#elif defined(PID_DOUBLEPREC)

  typedef double data_type; // 64-bit floating point

  #define PID_THRESHOLD 0.01

#else 

  typedef float data_type; // 32-bit floating point

#define PID_THRESHOLD 0.01

#endif


#ifndef PID_DEBUG
void PID_Controller(bool InitN, data_type coeff[6], data_type din[2], data_type dout[2]);

#else
void PID_Controller(bool InitN, data_type coeff[6], data_type din[2], data_type dout[2], data_type *test_yd, data_type *test_yi);
#endif //#ifndef PID_DEBUG




#endif //H_XAPP_PID_H
