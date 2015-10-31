clear all;
close all;
clc


%% GLOBAL CONSTANTS

N = 1024;

II=37+1

 Kp = 35.4
 Ki = 102
Kd = 0.292
Tf = 0.0433
Ts = 0.01
MAX_VAL  = 64
C  = -0.7931   % derivation constant
Gd =  6.0324  % Derivation gain
Gp = 35.3675 % Proportional gain
Gi =  0.5112   % Integration gain
max_clip =   MAX_VAL-1; 
min_clip =  -MAX_VAL; 


%%
% memory allocation
w1 = single(24*rand(1, N));
w2 = single(11*rand(1, N));
e  = single(zeros(1, N));
x1 = single(zeros(1, N));
yd = single(zeros(1, N));

%%
ww1 = double(w1);
ww2 = double(w2);
ee  = double(e);
xx1 = double(x1);
dd  = double(yd);

% save -ascii -double inp_w1.txt  ww1
% save -ascii -double inp_w2.txt  ww2
% save -ascii -double ref_e.txt   ee
% save -ascii -double ref_x1.txt  xx1
% save -ascii -double ref_yd.txt  dd

    
%%

T = [1 : II : (N+20)*II];

www1 = [zeros(1, 20), ww1]; 
www2 = [zeros(1, 20), ww2]; 

simin_w1 = [T', www1']; 
simin_w2 = [T', www2']; 


