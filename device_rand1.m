%author:卢银锋
%2021.10.23
%生成随机的充电设备
function [x0,y0,num,dev]=device_rand1(n)
if (mod(n,2)==1)
x=randperm(1200-82,1);
y=randperm(600-147,1);
end
if (mod(n,2)==1)
x=randperm(1200-82,1);
y=randperm(600-147,1);
end
%中心点位置
x0=x+41;
y0=y+73.5;
%设备编号
num=n;
%绘制该设备
dev=line([0 82 82 0 0]+x,[0 0 147 147 0]+y,'Color','k','LineWidth',1);
plot(x0,y0,'.','Color','c','MarkerSize',20);
