%author:卢银锋
%2021.10.21
%go_num[i]表示第i个充电设备需要go_num[i]的线圈动作
function onway1(x0,y0,go_num,dev_x,dev_y,dev_n,wire_h)
%设置步长
step=5;

if (go_num==1|go_num==2)
    x0_g0 


x0_go=round(dev_x(dev_n)/200)*200;
if(x0_go==0)
    x0_go=200;
end
if(x0_go==1200)
    x0_go=1000;
end
for i=1:200
    delete(wire_h(go_num));
if(x0_go-x0(go_num)>0)
    x0(go_num)=x0(go_num)+step;  
else 
    x0(go_num)=x0(go_num)-step;
end
    state_go=-1;
    [wire_h_go,wire_num_go]=car_roat(x0(go_num),y0(go_num),state_go,go_num);
    delete(wire_h_go);
if(x0_go-x0(go_num)==0)
    break;
end
 if(abs(x0_go-x0(go_num))<5)
     step=1;
 end
end
y0_go=round(dev_y(dev_n));
for i=1:100
if(y0_go-y0(go_num)>0)
    y0(go_num)=y0(go_num)+step;  
else 
    y0(go_num)=y0(go_num)-step;
end
    state_go=-1;
    [wire_h_go,wire_num_go]=car_roat(x0(go_num),y0(go_num),state_go,go_num);
    delete(wire_h_go);
if(y0_go-y0(go_num)==0)
    break;
end
 if(abs(y0_go-y0(go_num))<5)
     step=1;
 end
end
x0_go=round(dev_x(dev_n));
step=5;
for i=1:100
   
if(x0_go-x0(go_num)>0)
    x0(go_num)=x0(go_num)+step;  
else 
    x0(go_num)=x0(go_num)-step;
end
    state_go=-1;
    [wire_h_go,wire_num_go]=car_roat(x0(go_num),y0(go_num),state_go,go_num);
    delete(wire_h_go);
if(x0_go-x0(go_num)==0)
    break;
end
 if(abs(x0_go-x0(go_num))<5)
     step=1;
 end
end
state_go=1;
[wire_h_go,wire_num_go]=car_roat(x0(go_num),y0(go_num),state_go,go_num);