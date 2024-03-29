clear();

files=dir();
f=csvread('../DATA/20190924_140835.csv');

fx=f(:,2);
fy=f(:,1);

y=medfilt1(fy, 10);

plot(fx, fy, fx, y);
legend('Original', 'Filtered');
legend('boxoff');
xlabel('経過時間(s)');
ylabel('心拍間隔(s)');
title('20190924_140835.csv','FontSize',12);
 
