% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
ImgNum = 1000; 
ImgFolder = './test1/';
ImgInfo = cell(ImgNum,1);

%% 读取图片信息
for i = 1:ImgNum
    ImgName = [ImgFolder int2str(i-1)];
    ImgName = [ImgName '.jpg'];
    disp(i);
    RGBImg = imread(ImgName);
    YUVImg = rgb2ycbcr(RGBImg);
    ImgInfo{i} = YUVImg;
end

%% 存储图片信息
save('ImgInfo.mat','ImgInfo');