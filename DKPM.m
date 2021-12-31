function [X,Y]=DKPM(l1,l2,l3,q1,q2,q3)

%q1=input("Enter angle 1 range [min , max]: ")*pi/180;
%q2=input("Enter angle 2 range [min , max]: ")*pi/180;
%q3=input("Enter angle 3 range [min , max]: ")*pi/180;

%calculating x and y
X= l1*cosd(q1) + l2*cosd(q1+q2) + l3*cosd(q1+q2+q3);
Y= l1*sind(q1) + l2*sind(q1+q2) + l3*sind(q1+q2+q3);

end