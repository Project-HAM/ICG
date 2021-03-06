function y = doFilter(x)
%DOFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the DSP System Toolbox 9.2.
% Generated on: 28-Sep-2016 19:57:02

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    %
    % N     = 5;    % Order
    % Fpass = 0.8;  % Passband Frequency
    % Apass = 1;    % Passband Ripple (dB)
    % Fs    = 500;  % Sampling Frequency
    %
    % h = fdesign.highpass('n,fp,ap', N, Fpass, Apass, Fs);
    %
    % Hd = design(h, 'cheby1', ...
    %     'SystemObject', true);
    
    Hd = dsp.BiquadFilter( ...
        'Structure', 'Direct form II', ...
        'SOSMatrix', [1 -2 1 1 -1.99807958669736 0.998181752504008; 1 -2 1 1 ...
        -1.98885724688468 0.989091371692471; 1 -1 0 1 -0.965865871629902 0], ...
        'ScaleValues', [0.999065334800342; 0.994487154644288; ...
        0.982932935814951; 1]);
end

s = double(x);
y = step(Hd,s);

