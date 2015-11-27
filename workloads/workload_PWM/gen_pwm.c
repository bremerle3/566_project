#include "gen_pwm.h"
#include <stdio.h>
//#include <stdint.h>
void gen_pwm(int32_t duty, int32_t freq, int8_t * out )
{
    int32_t i=0;
    for(i=0;i<freq;i++)
    {
        if(i<duty)
        {
            *out = 1;
            printf(" 1");
        }
        else
        {
            *out = 0;
            printf(" 0");
        }
    }
}

