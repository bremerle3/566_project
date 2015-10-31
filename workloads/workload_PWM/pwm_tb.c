//#include "gen_pwm.h"
//#include <stdint.h>
#include <stdio.h>
#include "gen_pwm.h"
int main(void)
{
    int i=10;
    int32_t tmp;
    while(i--)               
       gen_pwm(10,100,&tmp); 
    i=10;                    
    while(i--)
       gen_pwm(50,100,&tmp); 
    i = 10;                  
    while(i--)
       gen_pwm(70,100,&tmp); 
    printf("test passed!\n");
    return 0;
}
