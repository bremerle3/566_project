#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/warehouse/lbremer/ese566/workload_PWM/hls_pwm/solution_pwm/.autopilot/db/a.g.bc ${1+"$@"}