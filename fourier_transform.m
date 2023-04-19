%in this code we learn how to read a file and find the fourier  for
%it and plot the signals in time and frequncy domain
[y, fs] = audioread('train/bye/bye1.wav');
plot(y); %plot at time domain
f = abs(fft(y)); %find the abs value for the fourier  
index_f = 1:length(f); % from 1 to number of samples in y
index_f = index_f ./ length(f); % index will be from 0:1/length(f):1
index_f = index_f * fs;
figure;
plot(index_f,f);