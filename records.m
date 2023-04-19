%we use this code to record different sounds for differnt people age and
%gender
recObj = audiorecorder(44000, 24, 1);% record at Fs=44khz, 24 bits per sample
for i=1:1 %number of records file
fprintf('Start speaking for audio #%d\n',i)
recordblocking(recObj, 3); % record 3 seconds
fprintf('Audio #%d ended\n',i)


y = getaudiodata(recObj); %get the voice to make calculation on it
y = y - mean(y); %shift for signal by subtract the avarge dc value
file_name0 = sprintf('train/bye/bye%d.wav',i); %how we name records file
audiowrite(file_name0, y, recObj.SampleRate);


end