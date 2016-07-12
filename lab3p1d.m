M = 7;
n=0:M-1; % specify index n

u_step = ones( size(n) ) .* (M-1 >= n >= 0) ;
y=conv(u_step,u_step); % y[n]
stem((0:(2*M - 2)), y, 'filled'); % plot the unit step sequence 
ylabel('y[n]');
xlabel('n'); 