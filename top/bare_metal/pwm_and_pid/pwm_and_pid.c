//------------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2010 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : 2010-08-03 14:15:21 +0100 (Tue, 03 Aug 2010)
//
//      Revision            : 144883
//
//      Release Information : AT510-MN-80001-r0p0-00rel0
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Cortex-M0 DesignStart C program example
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Include standard C library and RealView Compiler header.
//------------------------------------------------------------------------------

#include <stdio.h>
#include <inttypes.h>
#include <time.h>
#include "rt_misc.h"

	#define ADDR_FREQ 0x22000  // Address of PWM Freq register
	#define ADDR_DUTY 0x22004  // Address of PWM Duty register

	#define ADDR_INITN 0x23000  // Reset register 
	#define ADDR_COEFF0 0x23004   // Gi register 
	#define ADDR_COEFF1 0x23008   // Gd register 
	#define ADDR_COEFF2  0x2300C  // C register (derivation constant
	#define ADDR_COEFF3  0x23010  // Gp register 
	#define ADDR_COEFF4  0x23014  // max_lim register 
	#define ADDR_COEFF5  0x23018  // min_lim register 
	#define ADDR_DIN0 0x2301C  // input signal
	#define ADDR_DIN1 0x23020  // closed loop signal
	
int main(void) {
	// PWM registers
		uint32_t *reg_freq = (uint32_t *)(ADDR_FREQ);
		uint32_t *reg_duty = (uint32_t *)(ADDR_DUTY);
	// PID registers
		uint32_t *reg_initn = (uint32_t *)(ADDR_INITN);
		uint32_t *reg_coeff0 = (uint32_t *)(ADDR_COEFF0);
		uint32_t *reg_coeff1 = (uint32_t *)(ADDR_COEFF1);
		uint32_t *reg_coeff2 = (uint32_t *)(ADDR_COEFF2);
		uint32_t *reg_coeff3 = (uint32_t *)(ADDR_COEFF3);
		uint32_t *reg_coeff4 = (uint32_t *)(ADDR_COEFF4);
		uint32_t *reg_coeff5 = (uint32_t *)(ADDR_COEFF5);
		uint32_t *reg_din0 = (uint32_t *)(ADDR_DIN0);
		uint32_t *reg_din1 = (uint32_t *)(ADDR_DIN1);
	
		*reg_freq = 10;  // Write to frequency registers
		*reg_duty = 50;  // Write 50% duty cycle to duty register 
	
		*reg_initn = 1;  
		*reg_coeff0 = 70;  
		*reg_coeff1 = 0;  
		*reg_coeff2 = 1;  
		*reg_coeff3 = 30;  
		*reg_coeff4 = 63;  
		*reg_coeff5 = 33554368;  // 25-bit 2s complement for -64
		*reg_din0 = 1;  
		*reg_din1 = 1;  
  return 0;
}
