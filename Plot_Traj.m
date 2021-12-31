function Plot_Traj(p1,p2,phi,l1,l2,l3)
phi=phi*pi/180;
x=linspace(p1(1),p2(1),20);
y=linspace(p1(2),p2(2),20);
for i=1:length(y)
    [t1(i) t2(i) t3(i)]=IKPM(l1,l2,l3,phi,x(i),y(i));
end
x1 = l1*cos(t1);
y1 = l1*sin(t1);
x2 = x1 + l2*cos(t2+t1);
y2 = y1 + l2*sin(t2+t1);
x3 = x2 + l3*cos(t3+t2+t1);
y3 = y2 + l3*sin(t3+t2+t1);
for i = 1:length(t1)
    plot([0 x1(i) x2(i) x3(i)],[0 y1(i) y2(i) y3(i)],'.-b')
    axis([-1 1 -1 1]*(l1+l2+l3))
    pause(0.1)
end
end
