function wa=WA(l1,l2,l3,q1,q2,q3)
c=1;
for i=q1(1):180/200:q1(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,i,q2(1),q3(1));
    c=c+1;
end
for i=q1(1):180/200:q1(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,i,q2(2),q3(2));
    c=c+1;
end
for i=q2(1):180/200:q2(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,q1(2),i,q3(1));
    c=c+1;
end
for i=q2(1):180/200:q2(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,q1(1),i,q3(2));
    c=c+1;
end
for i=q3(1):180/200:q3(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,q1(1),q2(1),i);
    c=c+1;
end
for i=q3(1):180/200:q3(2)
    [x1(c), y1(c)]=DKPM(l1,l2,l3,q1(1),q2(2),i);
    c=c+1;
end
sum=0;
for i=1:(c-2)
    sum=sum + (x1(i+1)+x1(i))*(y1(i+1)-y1(i));
end
wa=0.5*sum;
end