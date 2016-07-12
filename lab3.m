nx=-1:2; x=[2,-3,4,1]; % x[n]
nh=3:6; h=[-3,5,-6,4]; % h[n]
ny=2:8; % missing code of n index
y=conv(x,h); % y[n]
subplot(311); stem(nx, x); axis([-1 21 -5 5]); ylabel('x[n]');
subplot(312); stem(nh, h); axis([-1 21 -7 7]); ylabel('h[n]');
subplot(313); stem(ny, y); axis([-1 21 -40 45]); ylabel('y[n]');
xlabel('n'); 