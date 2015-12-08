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

	#define ADDR_INITN 0x23000  // Reset register 
	#define ADDR_COEFF0 0x23004   // Gi register 
	#define ADDR_COEFF1 0x23008   // Gd register 
	#define ADDR_COEFF2  0x2300C  // C register (derivation constant
	#define ADDR_COEFF3  0x23010  // Gp register 
	#define ADDR_COEFF4  0x23014  // max_lim register 
	#define ADDR_COEFF5  0x23018  // min_lim register 
	#define ADDR_DIN0 0x2301C  // input signal
	#define ADDR_DIN1 0x23020  // closed loop signal

//------------------------------------------------------------------------------
// The following code implements all the functions required for semihosting
// using the Cortex-M0 DesignStart testbench, mapping output from C to the
// console output of the testbench.
//------------------------------------------------------------------------------

// Disable the inclusion of semihosting support; see the "ARM Compiler
// toolchain Using ARM C and C++ Libraries and Floating-Point Support"
// (ARM DUI 0475) for further details.
#pragma import(__use_no_semihosting)

// Define where the top of memory is.
#define TOP_OF_RAM 0x20000U

//------------------------------------------------------------------------------
// Define location of C stack and heap
//------------------------------------------------------------------------------

// Initialize stack and heap to span from the end of the zero-initialized
// region to the value defined by TOP_OF_RAM; see the "ARM Compiler toolchain
// Linker Reference" (ARM DUI 0493) and the "ARM Compiler toolchain Using ARM
// C and C++ Libraries and Floating-Point Support" (ARM DUI 0475) for further
// details.

extern unsigned int Image$$ZI$$Limit;

struct __initial_stackheap
__user_initial_stackheap
(unsigned int r0,
 unsigned int r1,
 unsigned int r2,
 unsigned int r3)__value_in_regs
{
  struct __initial_stackheap sh;

  sh.heap_base   = Image$$ZI$$Limit;
  sh.stack_base  = TOP_OF_RAM;
  sh.heap_limit  = sh.stack_base;
  sh.stack_limit = sh.heap_base;

  return sh;
}

//------------------------------------------------------------------------------
// Implement the minimum number of functions required to support
// standard C input/output operations without a debugger attached.
//------------------------------------------------------------------------------

// Define the location of the output console in the DesignStart testbench.
volatile unsigned char *console = (volatile unsigned char *) 0x40000000U;

// Implement a simple structure for C's FILE handle.
struct __FILE { int handle; };
FILE __stdout;
FILE __stdin;

// Implement file IO handling, only console output is supported.
time_t time(time_t* t)        { static time_t clock = 0; return clock++; }
int fputc(int ch, FILE *f)    { *console = ch; return ch; }
int ferror(FILE *f)           { return 0; }
int fgetc(FILE *f)            { return -1; }
int __backspace(FILE *stream) { return 0; }
void _ttywrch(int ch)         { fputc(ch,&__stdout); }

// Writing 0xD to the console causes the DesignStart testbench to finish.
void _sys_exit(void)          { fputc(0x0D,&__stdout); while(1); }

//------------------------------------------------------------------------------
// Implement the vector table in its own area to facilitate linking first
//------------------------------------------------------------------------------

extern void __main(void);     // Use C-library initialization function.

__attribute__ ((section("vectors")))
  static void (* const vector_table[])(void) =
{
  (void (*)(void)) TOP_OF_RAM, // Initial value for stack pointer.
  __main,                      // Reset handler is C initialization.
  0,                           // No HardFault handler, just cause lockup.
  0,                           // No NMI handler, just cause lockup.
  0//...                       // Additional handlers would be listed here.
};

//------------------------------------------------------------------------------
// Simple "Hello World" program.
//------------------------------------------------------------------------------

int main(void) {

    uint32_t *reg_initn = (uint32_t *)(ADDR_INITN);
		uint32_t *reg_coeff0 = (uint32_t *)(ADDR_COEFF0);
		uint32_t *reg_coeff1 = (uint32_t *)(ADDR_COEFF1);
		uint32_t *reg_coeff2 = (uint32_t *)(ADDR_COEFF2);
		uint32_t *reg_coeff3 = (uint32_t *)(ADDR_COEFF3);
		uint32_t *reg_coeff4 = (uint32_t *)(ADDR_COEFF4);
		uint32_t *reg_coeff5 = (uint32_t *)(ADDR_COEFF5);
		uint32_t *reg_din0 = (uint32_t *)(ADDR_DIN0);
		uint32_t *reg_din1 = (uint32_t *)(ADDR_DIN1);
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
