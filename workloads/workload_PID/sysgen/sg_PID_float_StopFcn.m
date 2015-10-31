clc;
close all;

%% HLS vs. Simulink 

diff_yd = simout_ref_yd(2:end) - simout_hls_yd(2:end);
figure; plot(diff_yd); title 'Derivator Yd: Simulink vs. HLS'
res_yd = [diff_yd simout_ref_yd(2:end) simout_hls_yd(2:end)];
max_diff_deriv = max(diff_yd)
min_diff_deriv = min(diff_yd)

diff_yi = simout_ref_yi(2:end) - simout_hls_yi(2:end);
res_yi = [diff_yi simout_ref_yi(2:end) simout_hls_yi(2:end)];
figure; plot(diff_yi); title 'Integrator Yi: Simulink vs. HLS'
max_diff_integr = max(diff_yi)
min_diff_integr = min(diff_yi)

diff_u = simout_ref_u(2:end) - simout_hls_u(2:end);
res_u = [diff_yd simout_ref_u(2:end) simout_hls_u(2:end)];
figure; plot(diff_u); title 'PID U: Simulink vs. HLS'
max_diff_pid = max(diff_u)
min_diff_pid = min(diff_u)

%% SysGen vs. Simulink 

diff_yd = simout_ref_yd(2:end) - simout_sg_yd(2:end);
figure; plot(diff_yd); title 'Derivator Yd: Simulink vs. SysGen'
res_yd = [diff_yd simout_ref_yd(2:end) simout_sg_yd(2:end)];
max_diff_deriv = max(diff_yd)
min_diff_deriv = min(diff_yd)

diff_yi = simout_ref_yi(2:end) - simout_sg_yi(2:end);
res_yi = [diff_yi simout_ref_yi(2:end) simout_sg_yi(2:end)];
figure; plot(diff_yi); title 'Integrator Yi: Simulink vs. SysGen'
max_diff_integr = max(diff_yi)
min_diff_integr = min(diff_yi)

diff_u = simout_ref_u(2:end) - simout_sg_u(2:end);
res_u = [diff_yd simout_ref_u(2:end) simout_sg_u(2:end)];
figure; plot(diff_u); title 'PID U: Simulink vs. SysGen'
max_diff_pid = max(diff_u)
min_diff_pid = min(diff_u)


%% SysGen vs. HLS 

diff_yd = simout_hls_yd(2:end) - simout_sg_yd(2:end);
figure; plot(diff_yd); title 'Derivator Yd: HLS vs. SysGen'
res_yd = [diff_yd simout_hls_yd(2:end) simout_sg_yd(2:end)];
max_diff_deriv = max(diff_yd)
min_diff_deriv = min(diff_yd)

diff_yi = simout_hls_yi(2:end) - simout_sg_yi(2:end);
res_yi = [diff_yi simout_hls_yi(2:end) simout_sg_yi(2:end)];
figure; plot(diff_yi); title 'Integrator Yi: HLS vs. SysGen'
max_diff_integr = max(diff_yi)
min_diff_integr = min(diff_yi)

diff_u = simout_hls_u(2:end) - simout_sg_u(2:end);
res_u = [diff_yd simout_hls_u(2:end) simout_sg_u(2:end)];
figure; plot(diff_u); title 'PID U: HLS vs. SysGen'
max_diff_pid = max(diff_u)
min_diff_pid = min(diff_u)
