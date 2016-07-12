M = 50;
fs=5000; t=0:1/fs:0.04;
x=sin(2*pi*100*t); % uncorrupted signal

r=0.1*randn(1,length(x)); % random noise
XR=x+r; % signal+noise (filter input)
y=0;
% Implement the moving average filter in time domain
for n=M:length(XR), % M = 3
 A = XR(n-M+1:n);
 y(n)= sum(A)/M; % missing code using the command 'sum'
end
subplot(211); plot(t,XR,t,x,'r'); xlabel('time (sec)'); ylabel('Amplitude');
legend('Corrupted','Original'); grid;
subplot(212); plot(t,y,'k',t,x,'r'); xlabel('time (sec)');ylabel('Amplitude');
legend('After filtering','Original'); grid; 

