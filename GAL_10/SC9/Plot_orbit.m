clear all
close all

data = load('ax_coeff.dat');

whitebg('w')

t = data(:,1);

x = data(:,12);
y = data(:,13);
z = data(:,14);

v_x = data(:,15);
v_y = data(:,16);
v_z = data(:,17);

R = sqrt(x.^2+y.^2);
r = sqrt(x.^2+y.^2+z.^2);



subplot(2,2,1), plot(x,y,'k')

xlabel('x (kpc)','fontsize',9)
ylabel('y (kpc)','fontsize',9)
axis([-100 100 -100 100])
set(gca,'xtick',(-100:20:100),'ytick',(-100:20:100),'fontsize',8)
axis square


subplot(2,2,2), plot(x,z,'k')

xlabel('x (kpc)','fontsize',9)
ylabel('z (kpc)','fontsize',9)
axis([-100 100 -100 100])
set(gca,'xtick',(-100:20:100),'ytick',(-100:20:100),'fontsize',8)
axis square

subplot(2,2,3), plot(t,r,'k')

xlabel('t (Myr)','fontsize',9)
ylabel('r (kpc)','fontsize',9)
axis([0 max(t) 0 100])
set(gca,'ytick',(0:20:100),'fontsize',8)
axis square


subplot(2,2,4), plot(R,z,'k')

xlabel('R (kpc)','fontsize',9)
ylabel('z (kpc)','fontsize',9)
axis square
axis([0 100 -100 100])
set(gca,'fontsize',8)



