%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Auther: Luke Hendrikse
%ID:101101824
%
% This script initializes the workspace struct for the MECH 5005 project
% simulation
%Any user input should be specified within this file, even if it is a call
%to a seperate script
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;

userInputs = struct;

%gravity
Gravity = 9.81;

%drone parameters
userInputs.dParams.m = 4.5; %kg
userInputs.dParams.vMax = 16; %m/s
userInputs.dParams.opsTime = 59*60; %secs
userInputs.dParams.opsAlt = 160; %m
userInputs.dParams.maxClimb = 3; %m/s
userInputs.dParams.dragCoef = 0.09;
userInputs.dParams.Aref = 0.08319; %m^2
userInputs.dParams.maxT = 1.174; %N

%Control Commands timeseries creation
userInputs.commands = load('badWaypoints.mat');


%visualization
userInputs.Visualization = struct;
userInputs.Visualization.animation = 0;
userInputs.Visualization.presentation = 0;