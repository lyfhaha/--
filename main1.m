%author:卢银锋
%2021.10.21
%主函数
%生成轨道
desk1();
%设置线圈数
wnum=4;
%设置线圈初始位置
x0=[120 1080 240 960];
y0=[120 480 360 360];
for i=1:wnum
    state_wire(i)=0;
    [wire_h(i),wire_num(i)]=car_roat(x0(i),y0(i),state_wire(i),i);
end
%设备数
dnum=4;
%生成设备
for i=1:dnum
%新设备    
[dev_x(i),dev_y(i),dev_num,dev]=device_rand(i);

%据设备的距离
distance(i,:)=(x0-dev_x(i)).^2+(y0-dev_y(i)).^2;
if (dev_x<180|dev_x>1020|dev_y<300|dev_y>540)
   distance(i,3:4)=inf; 
else
    distance(i,1:2)=inf;
end
nul=find(state_wire~=0);
%分配线圈（即找到目标线圈）
distance(i,nul)=inf;
[dis_min,go_num_1]=min(distance(i,:));
state_wire(go_num_1)=1;
go_num(i)=go_num_1;
end
for i=1:dnum
onway(x0,y0,go_num(i),dev_x,dev_y,i,wire_h);
end

