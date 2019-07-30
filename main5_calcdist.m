% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
load('Final_Histmat');
ImgNum = 1000;

%% 计算各图片与其它图片间的距离
Hist_Dist=[];
for i=1:ImgNum
    for j=1:ImgNum
        a = Final_Hist(i,:);
        b = Final_Hist(j,:);
        similarDistance(j) = pdist2(a,b,'cityblock');
    end
    Hist_Dist = [Hist_Dist;similarDistance];
end
save('Hist_Dist.mat','Hist_Dist');

%% 测试
img = 36; %第36张图片
temp = Hist_Dist(36,:);
[Y,I] = sort(temp);