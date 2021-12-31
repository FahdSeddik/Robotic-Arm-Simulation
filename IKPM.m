function [th1,th2,th3] = IKPM(l1,l2,l3,phi,x,y)
% wx=x-l3*cosd(phi);
% wy=y-l3*sind(phi);
% q2= acos((wx^2+wy^2-l1^2-l2^2)/(2*l1*l2)); 
% A=[ l1+l2*cos(q2) -l2*sin(q2)
% l2*sin(q2)  l1+l2*cos(q2)];
% Positions=[wx;wy];
% scq1=linsolve(A,Positions);
% sinq1=scq1(2);
% cosq1=scq1(1);
% q1=atan(sinq1/cosq1);
% if (cosq1 < 0 )
%     q1=q1+pi; 
% end 
% q1=q1*180/pi;
% q2=q2*180/pi;
% q3=phi-q1-q2;
wx = x- l3*cos(phi);
wy = y- l3*sin(phi);
cth2=((wx^2)+(wy^2)-(l1^2)-(l2^2))/(2*l1*l2);
th2=acos(cth2);
d=(l1^2)+(l2^2)+(2*l1*l2*cth2);
cth1=((l1*wx)+(l2*wx*cth2)+(l2*wy*sin(th2)))/d;
sth1=(((l1+l2*cth2)*wy)-(l2*sin(th2)*wx))/d;
if((cth1>0)&& (sth1>0))
    th1= atan(abs(sth1)/abs(cth1));
elseif((cth1>0)&& (sth1<0))
    th1 =2*pi - atan(abs(sth1)/abs(cth1));
elseif((cth1<0)&& (sth1>0))
    th1 =pi - atan(abs(sth1)/abs(cth1));
elseif((cth1<0)&& (sth1<0))
    th1 =pi + atan(abs(sth1)/abs(cth1));
end
th3 = phi - th1 - th2;
end