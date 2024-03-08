clc; close all; clear;
addpath(genpath('Subs')); %This is where my newly renamed files are

% Cn2= [0,10^(-15), 10^(-14)]; 
Cn2= [0,10^(-15)]; % Cn2 at least two parameters. 
N = 1024;
L = 2500;

nreals =2; % we use nreals = 4000 in practical; average number of random realizations of turbulence
nblkx= 1; % number of blocks in x direction, only used in BER_Blk_shiftstep.m 
% figflag = 2; % BER spatially
figflag = 0; % 

close all;
fracOrder = 4;
[BW,aveBER,DSnr] = fun_AT_BER_BW_randi ...
    (Cn2,N, L, fracOrder, nreals, nblkx,figflag);