#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/warehouse/lbremer/ese566/workload_PID/hls/fixp/hls_fixedp_pid_prj/solution_fixedp/.autopilot/db/a.g.bc ${1+"$@"}