Fs=500;
Ts=1/Fs;
wp=2*100/Fs;% 数字频率
ws=200*2/Fs;
Ap=2;
As=15;%选择滤波器的最小阶数
[N,Wc]=buttord(wp,ws,Ap,As);%创建butterworth模拟滤波器
[Z,P,K]=buttap(N);%把滤波器零极点模型转化为传递函数模型
[Bap,Aap]=zp2tf(Z,P,K);%把模拟滤波器原型转换成截至频率为Wn的低通滤波器
[b,a]=lp2lp(Bap,Aap,Wc);%用双线性变换法实现模拟滤波器到数字滤波器的转换
[bz,az]=bilinear(b,a,Fs);%绘制频率响应曲线
freqz(bz,az);
