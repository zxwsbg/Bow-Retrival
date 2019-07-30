% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
load('ClusterInfo.mat');
load('LocalHist.mat');
ImgNum = 1000; 

%% 对每张图片每个块进行分类
clusterNum = size(C,1);
Final_Hist=zeros(ImgNum,clusterNum);%记录每张图片的直方图
for i = 1:ImgNum;
    similarDistances = pdist2(cell2mat(LocalHist_Y(i)),C); 
    [minElements,idx] = min(similarDistances,[],2);
    bins = 0.5:1:clusterNum+0.5;
    hist = histogram(idx,bins);
    Features = hist.Values;
    Final_Hist(i,:) = Features;
end

save('Final_Hist.mat','Final_Hist');