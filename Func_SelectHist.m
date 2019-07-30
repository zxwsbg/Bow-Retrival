function y = Func_SelectHist(x,ratio)
    m = size(x,1);
    BlockNum = round(ratio*m);
    p=randperm(m,BlockNum);  %返回一行从1到n的整数中的num个，且这num个数也是不相同的
    p=sort(p,2);
    y=[];
    for i=1:BlockNum
        y=[y;x(p(i),:)];
    end
end