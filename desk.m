%author:卢银锋
%2021.10.21
function desk()
%desk 边界设置
line([0 1200 1200 0 0],[0 0 600 600 0],'Color','k','LineWidth',2.5);
axis equal ;
axis off ;
%轨道设置
%横轨道:2条
line([0 1200],[200 200],'Color','g','LineWidth',2);
line([1200 0],[400 400],'Color','g','LineWidth',2);
%竖轨道:5条
for i=1:5
line([200*i 200*i],[0 600],'Color','g','LineWidth',2);
end
hold on

% theta=linspace(0,20*pi,1001);
% r=linspace(0,50,1001);
% [x ,y]=pol2cart(theta,r);
% device_rand(1)
% device_rand(2)
%  h=car_roat(200,200,0);
%  pause(1);
% for i=1:30
%  delete(h);
%  h=car_roat(200+i*10,200+i*10,-1);
%  pause(0.03);
% end

