function t2()
fs=2000;
t=0:1/fs:100;
x=sawtooth(0.4*pi*t,0.5);%semnal triunghiular reprezentat de sawtooth
  for i = 1:1:length(x)
if x(i)>0
x(i) = x(i)*2;
end                        %perioada 5s
plot(t,x);
xlabel('Time(sec)')     % aici declar unitatea pe axa ox
ylabel('Amplitude')     % aici declar ce reprezinta axa oy
title('Triangular')     % numele reprezinta tipul de semnal

end

