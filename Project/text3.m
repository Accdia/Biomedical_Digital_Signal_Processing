Fs=500;
Ts=1/Fs;
wp=2*100/Fs;% ����Ƶ��
ws=200*2/Fs;
Ap=2;
As=15;%ѡ���˲�������С����
[N,Wc]=buttord(wp,ws,Ap,As);%����butterworthģ���˲���
[Z,P,K]=buttap(N);%���˲����㼫��ģ��ת��Ϊ���ݺ���ģ��
[Bap,Aap]=zp2tf(Z,P,K);%��ģ���˲���ԭ��ת���ɽ���Ƶ��ΪWn�ĵ�ͨ�˲���
[b,a]=lp2lp(Bap,Aap,Wc);%��˫���Ա任��ʵ��ģ���˲����������˲�����ת��
[bz,az]=bilinear(b,a,Fs);%����Ƶ����Ӧ����
freqz(bz,az);
