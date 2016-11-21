function y = doFilter(x)
%DOFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the DSP System Toolbox 9.2.
% Generated on: 11-Oct-2016 15:01:17

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    %
    % N     = 5;    % Order
    % Fpass = 0.5;  % Passband Frequency
    % Apass = 1;    % Passband Ripple (dB)
    % Fs    = 500;  % Sampling Frequency
    %
    % h = fdesign.lowpass('n,fp,ap', N, Fpass, Apass, Fs);
    %
    % Hd = design(h, 'cheby1', ...
    %     'SystemObject', true);
    
    Hd = dsp.BiquadFilter( ...
        'Structure', 'Direct form II', ...
        'SOSMatrix', [1 2 1 1 -1.9988374767798 0.998876471845618; 1 2 1 1 ...
        -1.9970442969754 0.997061220113492; 1 1 0 1 -0.998182706487373 0], ...
        'ScaleValues', [9.7487664555024e-06; 4.2307845236556e-06; ...
        0.000908646756313463; 1]);
end

s = double(x);
y = step(Hd,s);
