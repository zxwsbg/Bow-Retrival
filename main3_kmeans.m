% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
clusterNum = 300;
clusterDistanceType = 'cityblock';
maxIter = 500;
load('SelectHist.mat');

%% 聚类
SelectHist_Y = double(SelectHist_Y);
tic
[Idx,C] = kmeans(SelectHist_Y,clusterNum,'distance',clusterDistanceType,'MaxIter',maxIter);
runningtime = toc

save('ClusterInfo.mat','Idx','C');