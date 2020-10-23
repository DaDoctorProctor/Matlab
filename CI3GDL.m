function q  = CI3GDL(x,y,z)
d1=0.45;
a2=0.81;
a3=0.85;

xc=x;
yc=y;
zc=z;

D=(xc^2+yc^2+(zc-d1)^2-a2^2-a3^2)/(2*a2*a3);
theta1=atan2(yc,xc);
theta3=atan2(sqrt(1-D^2),D);
theta2=atan2(zc-d1,sqrt(xc^2+yc^2))-atan2(a3*sin(theta3),a2+a3*cos(theta3));

fprintf('Las variables articulares son:')
  q=[theta1*180/pi;theta2*180/pi;theta3*180/pi];
 % q=[theta1;theta2;theta3];
end