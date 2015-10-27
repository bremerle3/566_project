clear all;
close all;
clc;

N = 1024

II=37+1

Kp = 35.4
Ki = 102
Kd = 0.292
Tf = 0.0433
Ts = 0.01
MAX_VAL  = 4*64
C  = -0.7931   % derivation constant
Gd =  6.0324  % Derivation gain
Gp = 35.3675 % Proportional gain
Gi =  0.5112   % Integration gain
max_clip =   MAX_VAL-1
min_clip =  -MAX_VAL