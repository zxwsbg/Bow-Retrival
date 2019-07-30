% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
load('Hist_Dist.mat');
ImgFolder = './test1/';
ImgNum = 1000;

%% 测试
% Img = 436;
% temp = Hist_Dist(Img,:);
% [Y,I] = sort(temp);
% k = 16; %前15相似
% for i = 1:k
%     ImgFolder = './test1/';
%     ImgName = [ImgFolder int2str(I(i)-1)];
%     ImgName = [ImgName '.jpg'];
%     subplot(4,4,i);
%     imshow(ImgName);
% end

%% 计算pr值
result=prec_rec_SH(Hist_Dist);
x = [0:0.1:1];
plot(x,result,'r-*');