% Copyright ? 2019 Bowen Shi. All Rights Reserved. %
%% 参数设置
clc; clear all;
close all;
ImgNum = 1000; 
ImgFolder = './test1/';
ImgInfo = cell(ImgNum,1);
load('ImgInfo.mat');
LocalHist_Y = cell(ImgNum,1);

%% 分割图片
% for i = 1:ImgNum
%     ImgHist = cell2mat(ImgInfo(i));
% 
%     %该函数作用是把原矩阵按照8*8的块进行分割,输入的第二个参数8就是这来的
%     %每一个8*8的矩阵返回值就是将它们平铺成一列
%     %第i个8*8的块，对应的就是LocalHist_Y{i}的第i行
%     LocalHist_Y{i} =Func_divide(ImgHist(:,:,1),8);    
% end
% save('LocalHist.mat','LocalHist_Y');
load('LocalHist.mat');

%% 随机抽取特征向量
% 根据大数定律（不会的可以去复习一下概统），我们在下一步聚类的时候不一定需要所有提取的特征值，
% 可以随机选取一部分进行聚类
SelectHist_Y = [];
ratio = 0.2; % 选取块的比例
for i=1:ImgNum
    SelectHist_Y = [SelectHist_Y;Func_SelectHist(LocalHist_Y{i},ratio)];
end
save('SelectHist.mat','SelectHist_Y');

