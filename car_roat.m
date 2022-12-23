%author:卢银锋
%2021.10.21
function [h,num]=car_roat(x0,y0,state,n)
%线圈编号
num=n;
theta=linspace(0,20*pi,1001);
r=linspace(0,50,1001);
[x ,y]=pol2cart(theta,r);
h=plot(x+x0,y+y0);
%线圈状态：
%state=0;初始位置
%state=1;充电中
%state=-1;路上
if (state==0)
    set(h,'Color','b');
else if (state==1)
        set(h,'Color','r');
    else
        set(h,'Color','g');
         pause(0.05);
    end
end
axis equal ;
axis off ;
% for i=1:30
% delete(h);
% h=plot(x+50+10*i,y+50+10*i,'r');
% axis equal ;
% axis off ;
% pause(0.01);
% end