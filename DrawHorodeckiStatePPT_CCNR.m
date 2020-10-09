x=2:0.1:5;
y1=(2.*x.^2-10.*x-25+5.*(4.*x.^2-20.*x+25).^(1./2))./(2.*(x.^2-5.*x-50));% The solution from the CCNR Criterion
y2=(2.*x.^2-10.*x-25-5.*(4.*x.^2-20.*x+25).^(1./2))./(2.*(x.^2-5.*x-50));% The solution from the CCNR Criterion
y3=(x.^2-5.*x+5.*(x.*(5-x)).^(1./2))./(x.^2-5.*x+25);% The solution from the PPT Criterion
y4=(x.^2-5.*x-5.*(x.*(5-x)).^(1./2))./(x.^2-5.*x+25);% The solution from the PPT Criterion
shadedplot(x,y3,0.5,'r'); %SHADEDPLOT draws two lines on a plot and shades the area between those lines. 
hold on;
shadedplot(x,y1,y3,'m');
hold on;
shadedplot(x,y1,0,'b');
axis([2 5 0 0.5]);
hold on;
xlim=get(gca,'Xlim'); % 
plot(xlim,[2/7,2/7],'--y','LineWidth',4.0); % drawing x=2/7 (Horodecki states)
axis([2 5 0 0.5]);
hold on;
plot(x,y2,'xk','MarkerFaceColor','k');
hold on;
plot(x,y4,'xk','MarkerFaceColor','k');
hold on;
plot(x,y3,'sm','MarkerFaceColor','w');
hold on;
plot(x,y1,'ob','MarkerFaceColor','w');
hold on;
grid on;
set(gca,'ygrid','off','GridLineStyle' ,'-','GridColor','w','Gridalpha',1,'LineWidth',1.5);
hold on;
hold off