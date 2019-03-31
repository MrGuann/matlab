%分段函数-----------------
%(1)优雅方法
clear
x=[-2:0.02:2];
y=1.1*sign(x).*(abs(x)>1.1)+x.*(abs(x)<=1.1);
plot(x,y)
%(2)粗暴方法
clear
x=[-2:0.02:2];
y=ones(1,length(x));
for i=1:length(x)
    if abs(x(i))>1.1
        y(i)=1.1*sign(x(i));
    elseif abs(x(i))<=1.1
        y(i)=x(i);
    end
end
plot(x,y)

%subplot---------------
subplot(2,2,[1,3])
subplot(2,2,2)
subplot(2,2,4)

%1.---------------------------
clear
t=[0:pi/10:2*pi];
plot(t,sin(t),'b','LineWidth',4)
hold on;plot(t,cos(t),'r','LineWidth',4)
xi=fsolve(@(x) sin(x)-cos(x),[0,pi]);
plot(xi,sin(xi),'r*')

%2.--------------------------
%(1)-----
figure(1)
x=[0:10*pi];
plot(x,x.*sin(x))
%(2)------
figure(2)
x=[-10:10];y=[-10:10];
z=x.^2+6.*x.*y+y.^2+6.*x+2.*y-1;
plot3(x,y,z)
%(3)------
figure(3)
[x,y]=meshgrid([-16:16],[-4:4]);
z=x.^2/16-y.^2/4;
mesh(x,y,z)

%3.----------------
%(1)
subplot(1,3,1)
pie([10,20],{'已用','剩余'})
%(2)
subplot(1,3,2)
hist(randi(10,1,100),[0:10])
%(3)
subplot(1,3,3)
stairs(randi([0,10],1,10))

%4.--------------
clear
t=[0:pi/10:2*pi];
plot(t,sin(t),'b','LineWidth',4);
hold on;plot(t,cos(t),'r','LineWidth',4);legend('sin(x)','cos(x)');
xi=fsolve(@(x) sin(x)-cos(x),[0,pi]);
plot(xi,sin(xi),'r*')
title('sin(x)&cos(x)');
text(2.5,sin(2.5),'\leftarrow sin(x)');
text(5,cos(5),'\leftarrow cos(x)')

%5.--------------------
figure(5);
plot([0:10],log([0:10]));
title('对数函数的图像')

%6.-----------------------
figure(6);
set(gcf,'Color','y');
set(groot,'defaultLineLineWidth',4);
t=[0:pi/200:2*pi];
x=2*cos(t);
y=3*sin(t);
plot(x,y);grid on

%7.-----------
clear
t=[-2:0.1:2];
x=cos(t/pi);
y=2*sin(t/(2*pi));
figure
h=plot(t,x,t,y)
while(1)
    if waitforbuttonpress==0
        c=ceil(rand*5);
        switch c
            case 1
                set(h,'Color','r');
            case 2
                set(h,'Color','g');
            case 3
                set(h,'Color','b');
            case 4
                set(h,'Color','k');
            case 5
                set(h,'Color','y');
        end
    end
end

%答案方法
%------------------
clear
t=[-2:0.1:2];
x=cos(t/pi);
y=2*sin(t/(2*pi));
figure
plot(t,x)
hold on;
plot(t,y)
while(1)
    if waitforbuttonpress==0
        c=ceil(rand*5);
        switch c
            case 1
                set(get(gcf,'CurrentObject'),'Color','r');
            case 2
                set(get(gcf,'CurrentObject'),'Color','g');
            case 3
                set(get(gcf,'CurrentObject'),'Color','b');
            case 4
                set(get(gcf,'CurrentObject'),'Color','k');
            case 5
                set(get(gcf,'CurrentObject'),'Color','y');
        end
    end
end

