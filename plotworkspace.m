function plotworkspace(l1,l2,l3,q1,q2,q3)
cx=1;
cy=1;
for i=q1(1):3:q1(2)
    for j=q2(1):3:q2(2)
        for k=q3(1):3:q3(2)
            [x(cx),y(cy)]=DKPM(l1,l2,l3,i,j,k);
            cx=cx+1;
            cy=cy+1;
        end
    end
end
plot(x(:),y(:),'r.')
            
end