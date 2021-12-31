clc
clear
%%
disp('Initialize values...');
l1=input('Enter length of link 1 :');
l2=input('Enter length of link 2 :');
l3=input('Enter length of link 3 :');
q1=input('Enter range of angle 1 [min , max] in degrees: ');
q2=input('Enter range of angle 2 [min , max] in degrees: ');
q3=input('Enter range of angle 3 [min , max] in degrees: ');
clc
%%
disp('Choose action:');
choice=-1;
X=0;
Y=0;
while(choice~=7)
    fprintf('1) DKPM\n2) IKPM\n3) Calculate Working area\n4) Plot Working area\n5) Generate straight line trajectory between two points in the working area\n6) Robot animation\n7) Exit\n');
    choice=input('');
    clc
    if(choice==1)
        a1=input('Enter angle 1(degrees): ');
        a2=input('Enter angle 2(degrees): ');
        a3=input('Enter angle 3(degrees): ');
        [X,Y]=DKPM(l1,l2,l3,a1,a2,a3);
        fprintf('(X , Y) = (%.3f , %.3f)\n',X,Y);
    end
    if(choice==2)
        X=input('Enter x: ');
        Y=input('Enter y: ');
        phi=input('Enter phi (q1+q2+q3): '); 
        [a1,a2,a3]=IKPM(l1,l2,l3,phi*pi/180,X,Y);
        fprintf('(theta1 , theta2 , theta3) = (%.3f , %.3f , %.3f)\n',a1*180/pi,a2*180/pi,a3*180/pi);
    end
    if(choice==3)
        disp('Calculating working area...');
        wa=WA(l1,l2,l3,q1,q2,q3);
        fprintf('Area = %.3f\n',wa);
    end
    if(choice==4)
        plotworkspace(l1,l2,l3,q1,q2,q3);
    end
    if(choice==5)
        p1=input('Enter point 1 [x,y]: ');
        p2=input('Enter point 2 [x,y]: ');
        phi=input('Enter orientation of end effector (angle): ');
        Plot_Traj(p1,p2,phi,l1,l2,l3);
    end
    if(choice==6)
        Animate(l1,l2,l3,q1,q2,q3);
    end
end

