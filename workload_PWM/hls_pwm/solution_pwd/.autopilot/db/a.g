#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/warehouse/lbremer/ese566/workload_PWM/hls_pwm/solution_pwd/.autopilot/db/a.g.bc ${1+"$@"}