function Animate(L1,L2,L3,q1,q2,q3)

t1 = linspace(q1(1),q1(2),20)';
t2 = linspace(q2(1)+q1(1),q2(1)+q1(2),20)';
t3 = linspace(q3(1)+q1(1),q3(1)+q1(2),20)';
x1 = L1*cosd(t1);
y1 = L1*sind(t1);
x2 = x1 + L2*cosd(t2);
y2 = y1 + L2*sind(t2);
x3 = x2 + L3*cosd(t3);
y3 = y2 + L3*sind(t3);
for i = 1:length(t1)
    plot([0 x1(i) x2(i) x3(i)],[0 y1(i) y2(i) y3(i)],'.-b')
    axis([-1 1 -1 1]*(L1+L2+L3))
    pause(0.1)
end
t1 = linspace(q1(1),q1(2),1)';
t2 = linspace(q2(1)+q1(2),q2(2)+q1(2),20)';
t3 = linspace(q3(1)+q2(1)+q1(2),q3(1)+q2(2)+q1(2),20)';
x1 = L1*cosd(t1);
y1 = L1*sind(t1);
x2 = x1 + L2*cosd(t2);
y2 = y1 + L2*sind(t2);
x3 = x2 + L3*cosd(t3);
y3 = y2 + L3*sind(t3);
x11=(L1*cosd(q1(2)));
y11=(L1*sind(q1(2)));
for i = 1:length(t2)
    plot([0 x11 x2(i) x3(i)],[0 y11 y2(i) y3(i)],'.-b')
    axis([-1 1 -1 1]*(L1+L2+L3))
    pause(0.1)
end
t1 = linspace(q1(1),q1(2),1)';
t2 = linspace(q2(1)+q1(2),q2(2)+q1(2),1)';
t3 = linspace(q3(1)+q2(2)+q1(2),q3(2)+q2(2)+q1(2),20)';
x1 = L1*cosd(t1);
y1 = L1*sind(t1);
x2 = x1 + L2*cosd(t2);
y2 = y1 + L2*sind(t2);
x3 = x2 + L3*cosd(t3);
y3 = y2 + L3*sind(t3);

x12=L2*cosd(q2(2)+q1(2))+x11;
y12=L2*sind(q2(2)+q1(2))+y11;
for i = 1:length(t3)
    plot([0 x11 x12 x3(i)],[0 y11 y12 y3(i)],'.-b')
    axis([-1 1 -1 1]*(L1+L2+L3))
    pause(0.1)
end
end