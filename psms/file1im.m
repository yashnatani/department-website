C = [.641; 1.106; .332; .464;26.3]; 
FID_out = fopen('test_io1.dat','a'); 
 
for i = 1:5
fprintf(FID_out,'%f \n',C(i)); 
end 
fclose(FID_out); 

disp('Contents of test_io.dat : '); 
type test_io1.dat; 
r1=C(1);
x1=C(2);
r2=C(3);
x2=C(4);
xm=C(5);
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
title('speed torque char of three phase induction motor');

