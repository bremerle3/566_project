clear all
close all
clc

%% difference between C (u_res) and MATLAB (u_ref) generated reference results
u_res          = load('../hls/test_data/u_res.txt');
u_ref          = load('../hls/test_data/u_ref.txt');
diff_u         = u_ref' - u_res;
res_u          = [u_ref'  u_res diff_u];
abs_diff_u     = abs(diff_u);
max_abs_diff_u = max(abs_diff_u) 
min_abs_u      = min(abs(u_ref))
sum_abs_diff_u = sum(abs_diff_u)
figure; plot(diff_u); title 'PID ref U out vs.  MATLAB ref U'

%% difference between C (e_res) and MATLAB (e_ref) generated reference results
e_ref          = load('../hls/test_data/e_ref.txt');
e_res          = load('../hls/test_data/e_res.txt');
diff_e         = e_ref' - e_res;
res_e          = [e_ref'  e_res diff_e];
abs_diff_e     = abs(diff_e);
max_abs_diff_e = max(abs_diff_e) 
min_abs_e      = min(abs(e_ref))
sum_abs_diff_e = sum(abs_diff_e)
figure; plot(diff_e); title 'PID ref E out vs.  MATLAB ref E'

%% difference between C (e2_res) PID DUT E output and MATLAB (e_ref) reference 
e_ref           = load('../hls/test_data/e_ref.txt');
e2_res          = load('../hls/test_data/pid_e_res.txt');
diff_e2         = e_ref' - e2_res;
res_e2          = [e_ref'  e2_res diff_e2];
abs_diff_e2     = abs(diff_e2);
max_abs_diff_e2 = max(abs_diff_e2) 
min_abs_e       = min(abs(e_ref))
sum_abs_diff_e2 = sum(abs_diff_e2)
figure; plot(diff_e2); title 'PID DUT E out vs. MATLAB ref E'

%% difference between C (u2_res) PID DUT U output and MATLAB (e_ref) reference 
u2_res         = load('../hls/test_data/pid_u_res.txt');
u_ref          = load('../hls/test_data/u_ref.txt');
diff_u2        = u_ref' - u2_res;
res_u2         = [u_ref' u2_res diff_u2];
abs_diff_u2    = abs(diff_u2);
max_abs_diff_u2= max(abs_diff_u2)
min_abs_u      = min(abs(u_ref))
sum_abs_diff_u2= sum(abs_diff_u2)
figure; plot(diff_u2); title 'PID DUT U out vs. MATLAB ref U'


%% difference between C (yp_res) PID-Plant output and MATLAB (yp_ref) reference 
yp_ref          = load('../hls/test_data/yp_ref.txt');
yp_res          = load('../hls/test_data/yp_res.txt');
diff_yp         = yp_ref' - yp_res;
res_yp          = [yp_ref'  yp_res diff_yp];
abs_diff_yp     = abs(diff_yp);
max_abs_diff_yp = max(abs_diff_yp)
min_abs_yp      = min(abs(yp_ref))
sum_abs_diff_yp = sum(abs_diff_yp)
figure; plot(yp_res);  title 'C++: Close Looop system output'
figure; plot(diff_yp); title 'PID-PLANT YP out vs. MATLAB ref YP'

%% difference between C (yd_res) DERIVATIVE output and MATLAB (yd_ref) reference 
yd_res         = load('../hls/test_data/d_res.txt');
yd_ref         = load('../hls/test_data/d_ref.txt');
diff_yd        = yd_ref' - yd_res;
res_d          = [yd_ref'  yd_res diff_yd];
abs_diff_d     = abs(diff_yd);
max_abs_diff_d = max(abs_diff_d)
min_abs_yd     = min(abs(yd_ref))
sum_abs_diff_d = sum(abs_diff_d)
figure; plot(diff_yd); title 'diff derivation stage'


%% difference between C (i_res) INTEGRATOR output and MATLAB (i_ref) reference 
i_ref          = load('../hls/test_data/i_ref.txt');
i_res          = load('../hls/test_data/i_res.txt');
diff_i         = i_ref' - i_res;
res_i          = [i_ref'   i_res diff_i];
abs_diff_i     = abs(diff_i);
max_abs_diff_i = max(abs_diff_i) 
min_abs_i      = min(abs(i_ref))
sum_abs_diff_i = sum(abs_diff_i)
figure; plot(diff_i); title 'diff integration stage'



