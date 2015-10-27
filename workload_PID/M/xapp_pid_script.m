%% PID tutorial: it shows the PID theory and creates the reference results for the C++ program
%
% based on 
% http://www.engin.umich.edu/class/ctms/pid/pid.htm#introduction

%% 
clear all;
close all;
clc

Ts = 1/100; % sampling period
t  = 0 : Ts : 2.56-Ts; % time basis

% (Laplace transform) transfer function of the continuous system to be controlled
a = 1; b=1; c=10; d=20;
num=a; den=[b c d]; 
plant_s =tf(num,den); % Plant transfer function (Laplace transform)

% clipping values
min_val = -64;
max_val =  63;

%% DISCRETE PLANT system (P(z))

% (Z transform) transfer function of the discrete system to be controlled
P = c2d(plant_s,Ts,'tustin')  % discrete plant transfer function (Zeta transform)
figure; step(P,t); title 'Open-Loop answer to input step for a discrete plant'; grid


%%
% The DC gain of the plant transfer function is 1/20, so 0.05 is the final value of the output to an unit step input. 
% This corresponds to the steady-state error of 0.95, quite large indeed. Furthermore, the rise time is about one second, 
% and the settling time is about 1.5 seconds. Let's design a controller that will reduce the rise time, reduce the settling time, 
% and eliminates the steady-state error. 

%% DISCRETE PID system (H(z))

% dummy parameters to generate a PID 
Kp=1; Ki=1; Kd=1; Tf=1; 
HH = pid( Kp, Ki, Kd, Tf, Ts, 'IFormula','Trapezoidal', 'DFormula','Trapezoidal');

H = pidtune(P, HH)


%% Proportional Discrete Controller

H.Kp = 300;
H.Ki = 0;
H.Kd = 0;

% closed loop system:  T(z) = P(z)H(z) / ( 1 + P(z)H(z) )
T = feedback(H*P,1);
figure; step(T,t); grid;
title(['Closed-Loop answer to input step with Kp=',num2str(H.Kp)]);
axis([0    2.0  0 1.5]);

%%
% The above plot shows that the proportional controller reduced both the rise time and the 
% steady-state error, increased the overshoot, and decreased the settling time by small amount. 


%% Proportional Derivative Discrete Controller
%
% The derivative controller (Kd) reduces both the overshoot and the settling time.

H.Kp = 300;
H.Ki = 0;
H.Kd = 30;

% closed loop system:  T(z) = P(z)H(z) / ( 1 + P(z)H(z) )
T = feedback(H*P,1);
figure; step(T, t); grid
title(['Closed-Loop step: Kp=',num2str(H.Kp), ' Kd=' num2str(H.Kd)]);
axis([0    2.0  0 1.5]);

%%
% This plot shows that the derivative controller reduced both the overshoot and the settling time, 
% and had a small effect on the rise time and the steady-state error. 


%% Proportional Integral Controller
%
%  An integral controller (Ki) decreases the rise time, increases both the overshoot and the settling time, and eliminates the 
% steady-state error. Let us reduce Kp to 30 and Ki to 70.

H.Kp = 30;
H.Ki = 70;
H.Kd =  0;
%contr_d = pidtune(plant_d, 'pi');
T = feedback(H*P,1);
figure; step(T); grid
title(['Closed-Loop step: Kp=',num2str(H.Kp), ' Ki=' num2str(H.Ki)])
axis([0    2.0  0 1.5]);

%%
% We have reduced the proportional gain (Kp) because the integral controller also reduces the rise 
% time and increases the overshoot as the proportional controller does (double effect). 
% The above response shows that the integral controller eliminated the steady-state error. 



%% Proportional Integral Derivative Discrete Controller 

% tuning the PID
H  = pidtune(P, HH) 
Kp = H.Kp;
Ki = H.Ki;
Kd = H.Kd;
Tf = H.Tf;

% closed loop system:  T(z) = P(z)H(z) / ( 1 + P(z)H(z) )
T  = feedback(H*P, 1); 
figure; step(T, t); grid
title(['Closed-Loop answer to input step: Kp=',num2str(H.Kp), ' Ki=' num2str(H.Ki), ' Kd=' num2str(H.Kd)])
axis([0    2.0  0 1.5]);


%% Now everything with finite differences equations

% step input signal
w = ones(1, numel(t)); w(1) = 0;

% PID constants
C  = (Ts - 2*Tf)/(Ts + 2*Tf); % derivation filter constant
Gd = 2*Kd/(Ts + 2*Tf);        % derivation stage gain
Gi = Ki*Ts/2;                 % integrator stage gain
Gp = Kp;                      % proportional stage

% initial system states 

yd_prev = 0; x1_prev = 0; x2_prev = 0;
yi_prev = 0;
y_z1 = 0; y_z2 = 0;
u_z1 = 0; u_z2 = 0;
y_prev = 0;

for i = 1 : numel(w)
    
    % CLOSED LOOP error signal E(N) = W(n)-Y(n-1)
    e(i) = w(i) - y_prev;  
    if (e(i) > max_val) e(i) = max_val; end        
    if (e(i) < min_val) e(i) = min_val; end
    
    x1 = Gd*e(i); % input signal of the derivative stage
    x2 = Gi*e(i); % input signal of the integration stage
  
    % DERIVATIVE STAGE 
    % Yd(n-1) = -C * Yd(n-1) + X1(n) - X1(n-1);
    yd(i) = -C*yd_prev + x1 - x1_prev;
 
    % INTEGRATION STAGE 
    % Ti(n) = X2(n) + X2(n-1) 
	% Yi(n) = CLIP( Yi(n-1) + Ti(n) )    

    ti = x2_prev + x2;
    ti = yi_prev + ti;    
    if (ti > max_val) ti = max_val; end        
    if (ti < min_val) ti = min_val; end
    yi(i) = ti;
 
    
    % PID STAGE
    u(i) = e(i) * Gp + yd(i) + yi(i);
    if (u(i) > max_val) u(i) = max_val; end        
    if (u(i) < min_val) u(i) = min_val; end    
    
    % PLANT SYSTEM
    y(i)    = 1.903*y_z1 -0.9048*y_z2 + 2.38e-005 *u(i) + 4.76e-005 *u_z1 + 2.38e-005*u_z2;
    y_z2    = y_z1; % Y(n-2)
    y_z1    = y(i); % Y(n-1)
    u_z2    = u_z1; % U(n-2)
    u_z1    = u(i); % U(n-1)
    y_prev  = y(i); % Y(n-1)   
    
    % update internal PID states for the next iteration
    x1_prev = x1;    
    x2_prev = x2;        
    yi_prev = yi(i);   
    yd_prev = yd(i);    
  
end


figure; plot(t, y, 'k'); title 'Closed loop response to step signal'
axis([0    2.0  0 1.5]); grid

%%
save ../hls/test_data/e_ref.txt -ascii -double e
save ../hls/test_data/d_ref.txt -ascii -double yd
save ../hls/test_data/i_ref.txt -ascii -double yi
save ../hls/test_data/u_ref.txt -ascii -double u
save ../hls/test_data/yp_ref.txt -ascii -double y
