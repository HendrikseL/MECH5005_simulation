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

%Control Commands timeseries creation
userInputs.commands = struct;

%Command flags
userInputs.commands.commandFlags = struct;
userInputs.commands.commandFlags.thrustEnable = 1;
userInputs.commands.commandFlags.psiEnable = 0;
userInputs.commands.commandFlags.thetaEnable = 0;
userInputs.commands.commandFlags.phiEnable = 0;

%Thrust Command
userInputs.commands.thrust = timeseries;
userInputs.commands.thrust.data = [0; 10; 0];
userInputs.commands.thrust.time = [0; 10; 80];

%Euler angles in the body frame
%ZYX order; psi = yaw (rate) , theta = pitch, phi = roll
userInputs.commands.psi = timeseries;
userInputs.commands.psi.data = [0; 0];
userInputs.commands.psi.time = [0; 10];

userInputs.commands.theta = timeseries;
userInputs.commands.theta.data = [0; 0];
userInputs.commands.theta.time = [0; 10];

userInputs.commands.phi = timeseries;
userInputs.commands.phi.data = [0; 0];
userInputs.commands.phi.time = [0; 10];

%visualization
userInputs.Visualization = struct;
userInputs.Visualization.animation = 0;
userInputs.Visualization.presentation = 0;