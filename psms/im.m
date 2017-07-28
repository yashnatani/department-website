%m file create a plot of the torque speed curve of the three phase induction motor
r1=input('the value of r1=');
x1=input('the value of x1=');
r2=input('the value of r2=');

x2=input('the value of x2=');
xm=26.3;
v_phase=460/sqrt(3);
n_sync=1800;
w_sync=188.5;
v_th=v_phase*(xm/sqrt(r1^2+(x1+xm)^2));
z_th=((j*xm)*(r1+j*x1))/(r1+j*(x1+xm));
r_th=real(z_th);
x_th=imag(z_th);
s=(0:1:50)/50;
s(1)=0.001;
nm=(1-s)*n_sync;
for ii=1:51
    t_ind1(ii)=(3*v_th^2*r2/s(ii))/...
        (w_sync*((r_th+r2/s(ii))^2+(x_th+x2)^2));
end
plot(nm,t_ind1,'color','k','linewidth',2);
xlabel('speed');
ylabel('torque');
title('induction motor torque speed characteristic');

