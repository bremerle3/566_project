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


diff_y = simout_ref_y(2:end) - simout_hls_y(2:end);
res_y = [diff_y simout_ref_y(2:end) simout_hls_y(2:end)];
figure; plot(diff_y); title 'Closed Loop PID Y: Simulink vs. HLS'
max_diff_plant = max(diff_y)
min_diff_plant = min(diff_y)

diff_u = simout_ref_u(2:end) - simout_hls_u(2:end);
res_u = [diff_yd simout_ref_u(2:end) simout_hls_u(2:end)];
figure; plot(diff_u); title 'PID U: Simulink vs. HLS'
max_diff_pid = max(diff_u)
min_diff_pid = min(diff_u)

