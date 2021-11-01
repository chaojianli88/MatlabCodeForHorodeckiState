x=0:0.1:5;
y1=(2.*x.^2-10.*x-25+5.*(4.*x.^2-20.*x+25).^(1./2))./(2.*(x.^2-5.*x-50));% The solution from the CCNR Criterion
y2=(2.*x.^2-10.*x-25-5.*(4.*x.^2-20.*x+25).^(1./2))./(2.*(x.^2-5.*x-50));% The solution from the CCNR Criterion
y3=(x.^2-5.*x+5.*(x.*(5-x)).^(1./2))./(x.^2-5.*x+25);% The solution from the PPT Criterion
y4=(x.^2-5.*x-5.*(x.*(5-x)).^(1./2))./(x.^2-5.*x+25);% The solution from the PPT Criterion
shadedplot(x,y3,0.5,'[1 0 0.7059]'); %SHADEDPLOT draws two lines on a plot and shades the area between those lines. 
hold on;
shadedplot(x,y1,y3,'[1 0.8 1]');
hold on;
shadedplot(x,y1,0,'[0.7569 0.8235 0.9412]');
axis([2 5 0 0.5]);
hold on;
xlim=get(gca,'Xlim'); % 
axis([2 5 0 0.5]);
hold on;
%plot(x,y2,'xy','MarkerFaceColor','y');
%hold on;
%plot(x,y4,'-sy','MarkerFaceColor','y');
%hold on;
plot(x,y3,'sy','MarkerFaceColor','y');
hold on;
plot(x,y1,'ob','MarkerFaceColor','w');
hold on;
grid on;
view(90,-90);
set(gca,'ygrid','off','GridLineStyle' ,'-','GridColor','k','Gridalpha',1,'LineWidth',2.0);
plot(xlim,[2/7,2/7],'-g','LineWidth',4.0); % drawing x=2/7 (Horodecki states)
hold on;
hold off
