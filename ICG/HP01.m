function y = doFilter(x)
%DOFILTER Filters input x and returns output y.

% MATLAB Code
% Generated by MATLAB(R) 9.0 and the DSP System Toolbox 9.2.
% Generated on: 28-Sep-2016 17:50:24

%#codegen

% To generate C/C++ code from this function use the codegen command.
% Type 'help codegen' for more information.

persistent Hd;

if isempty(Hd)
    
    % The following code was used to design the filter coefficients:
    %
    % N     = 5;     % Order
    % Fstop = 0.08;  % Stopband Frequency
    % Astop = 80;    % Stopband Attenuation (dB)
    % Fs    = 500;   % Sampling Frequency
    %
    % h = fdesign.highpass('n,fst,ast', N, Fstop, Astop, Fs);
    %
    % Hd = design(h, 'cheby2', ...
    %     'SystemObject', true);
    
    Hd = dsp.BiquadFilter( ...
        'Structure', 'Direct form II', ...
        'SOSMatrix', [1 -1.99999908586081 1 1 -1.99778005100013 ...
        0.997793721951963; 1 -1.99999965082985 1 1 -1.99422109651831 ...
        0.994234179775412; 1 -1 0 1 -0.99643258711868 0], ...
        'ScaleValues', [0.998893671519987; 0.997113906114032; ...
        0.99821629355934; 1]);
end

s = double(x);
y = step(Hd,s);

