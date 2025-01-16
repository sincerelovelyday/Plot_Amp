function Plot_Amp(x,fs)
% 输入信号和信号的采样率，画信号的幅度谱。
N = length(x);
Xk=fft(x);
Xk=abs(Xk);
Xk=Xk(1:floor(N/2)+1);
Xk(2:end-1)=2*Xk(2:end-1);% 单边幅度谱
f1=fs*(0:(N/2))/N;
figure;
subplot(2,1,1);plot(x);title('原始信号时域波形图');
% w1=2*pi*f1/fs;    % 信号频率分组
subplot(2,1,2);plot(f1,Xk); title('原始语音信号采样后的频谱图');xlabel("归一化频率/\pi rad");


% 测试1
end
