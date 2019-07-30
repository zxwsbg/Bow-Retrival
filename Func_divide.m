% 我知道用循环写很蠢，但我懒
function y=Func_divide(x,BlockSize)
    y = [];
    n = size(x,1)/8;
    m = size(x,2)/8;
    for i = 1:n
        for j = 1:m
            posx = (i-1)*BlockSize+1; %某个8*8的块起始位置横坐标
            posy = (j-1)*BlockSize+1; %某个8*8的块起始位置纵坐标
            temp = x(posx:posx+BlockSize-1,posy:posy+BlockSize-1);
            temp = reshape(temp',1,BlockSize*BlockSize); %求转置来横着拼
            % 平铺
            y = [y;temp];
        end
    end
end