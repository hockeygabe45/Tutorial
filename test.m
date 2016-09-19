
x=[1,2,3,4,5,6];
y=[6,5,4,3,2,1];
fs=2;
impulse_response( x, y, fs )
=======
% This tests whether the impulse_response.m function works

fs=10;
t=-1:1/fs:1;
x=cos(2*pi*t);    % input signal
y=3*cos(2*pi*t);  % output signal
[h,t]=impulse_response(x,y,fs);   % we expect the impulse response to be
amplitude=(1/fs)*trapz(h)         % a dirac delta with amplitude 3
