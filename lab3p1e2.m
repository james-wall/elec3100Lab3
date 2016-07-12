M=7;
num=ones(1,M); % Numerator
z=roots(num); % find zeros
den=[M zeros(1,M-1)]; % Denominator
p=roots(den); % find poles

sys=tf(num, den, 1); % system function
figure; zplane(z,p);
figure;
subplot(211); plot((0:1023)*2/1024, abs(fft(ones(1,M)/M,1024)));
ylabel('|H|');
subplot(212); plot((0:1023)*2/1024, angle(fft(ones(1,M)/M,1024)));
ylabel('< H'); xlabel('\omega (\pi radian/sample)'); 