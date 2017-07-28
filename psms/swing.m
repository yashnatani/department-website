%% Jaikumar Pettikkattil
%  Email >> jaikumarpr@gmail.com
%  phone >> +18184713586
%                                                          ~~We believe then we Do~~

%%            Point by Point Solution of Swing Equation
%             *******************$$********************
% |||Swing equation being a non linear equation, numerical methods are use to
% solve it. Point by Point method is one of the classical solution to solve
% swing equation|||
%
% |||  Below is a solution of swing equation for a machine connected to infinite bus 
%      through two parallel lines. Swing equation is drawn for a persisting fault in
%      one of the parallel line and also after fault is cleared. stability
%      of system is concluded after analysing the swing curve.
%      clearing angle is calculated for system stability|||
%     
%  ====================Reference==============================
%  [1] Power system analysis and design B R gupta
%  [2] Power system analysis stevenson Jr, John J Grainger
%  ============================================================

%% Problem - f = 50hz generator 50 MVA  supplying 50 MW with inertia constant 'H' = 2.7 MJ/MVA at rated
%  speed. E = 1.05 pu ,V = 1 pu, X1 = X2 = 0.4 pu. three phase fault at line 2. 
%  (a) plot swing curve for a susteained fault up to a time of 5 secs.
%  (b) plot swing curve if fault is cleared by isolating line in 0.1 seconds.
%  (c) Find the critical clearing angle

%% MVA base  = 50
% given
E = 50; V =1; Xd = 0.2; X1 =0.4; X2 = 0.4;H = 2.7;

% prefault condition

del = 0:pi/10:pi;
del1 =del;
del2 = del;

M = 2.7/(180*50);                   % angular momentum = H/180*f
Peo = (1.05/0.4)*sin(del);          % Initial power curve 
Po = 1 ;                            % power output in pu = 50 MW/50 MVA
delo = asind(0.4/1.05);             % initial load angle in degrees //Pe = (E*V/X) sin(delo)
% During fault

Pe2 = 1.05*sin(del1);               % Power curve during fault

%Post fault condition 

Pe3 = (1.05/0.6)*sin(del2);         % Power curve after clearing fault

%%  Primary Power curve plot Figure-1

plot(del,Peo);
set(gca,'XTick',0:pi/10:pi);
set(gca,'XTickLabel',{'0','','','','','pi/2','','','','','pi'});
title('Power Curve');
xlabel('Load angle');
ylabel('Genpower');
text((2/3)*pi,(1.05/0.4)*sin((2/3)*pi),'\leftarrow intial curve','HorizontalAlignment','left');
text(pi/2,2.75,'2.625*sin\delta','HorizontalAlignment','center');
hold all
plot(del1,Pe2);
text((2/3)*pi,1.05*sin((2/3)*pi),'\leftarrow during fault','HorizontalAlignment','left');
text(pi/2,1.80,'1.05*sin\delta','HorizontalAlignment','center');
plot(del2,Pe3);
text((2/3)*pi,(1.05/0.6)*sin((2/3)*pi),'\leftarrow fault cleared','HorizontalAlignment','left');
text(pi/2,1.1,'1.75*sin\delta','HorizontalAlignment','center');
hold off

%% ------------

t = 0.05;        % time step preferably 0.05 seconds
t1 = 0:t:0.5;


%% (a) sustained fault at t = 0

% for discontinuity at t = 0 , we take the average of accelerating power
% before and after the fault
% at t = 0-, Pa1 = 0
% at t = 0+. Pa2 = Pi - Pe2  
% at t =  0 ,Pa =Pa1+Pa2/2


Pao = (1 - (1.05*sind(delo)))/2;      % at the instant of fault del1 = delo   
Pa(1) = Pao;
cdel(1) = 0;
d1 = t^2/M;

for i = 1:11
    
    if i == 1
    
        d2(i) = d1*Pa(i);
        del(i) = delo;
      
    else  
      cdel(i) = cdel(i-1)+d2(i-1); 
      
      del(i)  = del(i-1)+cdel(i); 
      
      Pe(i) = 1.05*sind(del(i));
      
      Pa(i) = 1 - Pe(i);
      
      d2(i) = d1*Pa(i);
    end
end
%% swing curve 1 plot

figure (2); 
plot(t1,del);
set(gca,'Xtick',0:0.05:0.5);
set(gca,'XtickLabel',{'0','0.05','0.10','0.15','0.20','0.25','0.30','0.35','0.40','0.45','0.50'});
title('Swing Curve');
xlabel('seconds');
ylabel('degrees');
text(0.30,150,'  Sustained fault','HorizontalAlignment','right');
text(0.001,130,' load angle increases with time -- Unstable state','HorizontalAlignment','left');

%% (b) Fault cleared in 0.10 seconds ,2nd step ---- 3rd element [1]0 [2]0.05,[3]0.10

Pafo = (1 - (1.05*sind(delo)))/2;      % at the instant of fault del1 = delo   
Paf(1) = Pao;
cdelf(1) = 0;
d1f = t^2/M;

for i = 1:2
    
    if i == 1
    
      d2f(i) = d1*Pa(i);
      delf(i) = delo;
      
   else
      cdelf(i) = cdelf(i-1)+d2f(i-1); 
      
      delf(i)  = delf(i-1)+cdelf(i); 
      
      Pef(i) = 1.05*sind(delf(i));
      
      Paf(i) = 1 - Pef(i);
      
      d2f(i) = d1*Paf(i);
    end

end

% after clearing fault, power curve shift to Pe3

for i = 3:11
    
    
     if i == 3
         
      cdelf(i) = cdelf(i-1)+d2f(i-1); 
      delf(i)  = delf(i-1)+cdelf(i); 
      Pef(i) = 1.05*sind(delf(i));
      Paf(i) = 1 - Pef(i);
      a1 = Paf(i);
      d2f(i) = d1*Paf(i);
       a2 = d2f(i);  
       
      Pef(i) = 1.75*sind(delf(i));
      Paf(i) = 1 - Pef(i);
      d2f(i) = d1*Paf(i);
      
      Paf(i) = (Paf(i)+ a1)/2;
      d2f(i) = (d2f(i) + a2)/2;
      
     else
        
       
      cdelf(i) = cdelf(i-1)+d2f(i-1); 
      
      delf(i)  = delf(i-1)+cdelf(i); 
      
      Pef(i) = 1.75*sind(delf(i));
      
      Paf(i) = 1 - Pef(i);
      
      d2f(i) = d1*Paf(i);
     end
end

%% ------

figure (3); 
plot(t1,delf);
set(gca,'Xtick',0:0.05:0.5);
set(gca,'XtickLabel',{'0','0.05','0.10','0.15','0.20','0.25','0.30','0.35','0.40','0.45','0.50'});
title('Swing Curve');
xlabel('seconds');
ylabel('degrees');
text(0.25,57,' Fault Cleared in 0.10 sec','HorizontalAlignment','right');
text(0.15,30,' load angle decreases with time -- Stable state','HorizontalAlignment','left');

%% (c) critical clearing angle

delo = degtorad(delo);       % initial load angle in rad
delm = pi - asin(1/1.75);   % angle of max swing

c1 = ((delm-delo)-(1.05*cos(delo))+(1.75*cos(delm)))/(1.75-1.05); 
cclang = acos(c1);                                % critical clearing angle in rad
cclang = radtodeg(cclang);                        % critical clearing angle in degree
cclang = int16(cclang);                           % converting to integer
fprintf('\n\n\t\t Critical Clearing angle is %d degree ',cclang);





