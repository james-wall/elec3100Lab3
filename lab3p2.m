ng=0:4; g=[2,-3,4,1,0]; % x[n]
nh=0:4; h=[3,2,0,0,0]; % h[n]
ny=0:4;
%y=conv(g,h); % y[n]
fG = fft(g);
fH = fft(h);
fY = fG.*fH;
y = ifft(fY);
%y =cconv(g,h,ny);

subplot(311); stem(ng, g); axis([-1 4 -5 5]); ylabel('g[n]');
subplot(312); stem(nh, h); axis([-1 4 -7 7]); ylabel('h[n]');
subplot(313); stem(ny, y); axis([-1 8 -40 45]); ylabel('y[n]');
xlabel('n'); 