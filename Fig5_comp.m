figure(1)
x = logspace(0,8);
y = x;
loglog(x,y,'k','linewidth',2)
line([1 1e8],[1 1e8],[1 1],'Color','k','Linewidth',2)


hold on
scatter3(15,15,1e2,'r','filled')
scatter3(15,15,1,'r','filled')
line([15 15],[15 15],[1 1e2],'Color','r','Linewidth',2)
scatter3(1.1,1.1,1e2,'r','filled')

scatter3(127,4,1,30,[1 0.5 0],'filled')
scatter3(127,4,2,30,[1 0.5 0],'filled')
line([127 127],[4 4],[1 2],'Color',[1 0.5 0],'Linewidth',2)
scatter3(1.1,1.1,2,30,[1 0.5 0],'filled')

scatter3(256,30,1,30,[0.5 1 0],'filled')
scatter3(256,30,1e5,30,[0.5 1 0],'filled')
scatter3(256,30,1e6,30,[0.5 1 0],'Linewidth',2)


scatter3(1.1,1.1,1e5,30,[0.5 1 0],'filled')
scatter3(1.1,1.1,1e6,30,[0.5 1 0],'Linewidth',2)

line([256 256],[30 30],[1 1e5],'Color',[0.5 1 0],'Linewidth',2)
line([256 256],[30 30],[1e5 1e6],'Color',[0.5 1 0],'Linewidth',2,'Linestyle','--')

scatter3(2000,40,1,30,'k','filled')
scatter3(2000,40,1e4,30,'k','filled')
scatter3(2000,40,2e6,30,[0.5 0.5 0.5],'filled')
scatter3(2000,40,1e8,30,[0.5 0.5 0.5],'Linewidth',2)

scatter3(1.1,1.1,1e4,30,'k','filled')
scatter3(1.1,1.1,2e6,30,[0.5 0.5 0.5],'filled')
scatter3(1.1,1.1,1e8,30,[0.5 0.5 0.5],'Linewidth',2)

scatter3(1.1,1.1,3e8,30,'b','filled')

line([2000 2000],[40 40],[1 1e4],'Color','k','Linewidth',2)
line([2000 2000],[40 40],[1e4 1e6],'Color',[0.5 0.5 0.5],'Linewidth',2)
line([2000 2000],[40 40],[1e6 1e8],'Color',[0.5 0.5 0.5],'Linewidth',2,'Linestyle','--')

grid on
set(gcf,'position',[-1300,-300,1200,900])

set(gca,'FontSize',18)
set(gca,'Linewidth',2)
box on
xlim([1 1e8])
ylim([1 1e8])
ylabel('Connectivity')
xlabel('Number of the qubit')
pgon1 = polyshape([1 1e8 1e8],[1 1 1e8]);
pg1 = plot(pgon1);
pg1.FaceColor = [0.5 0.5 0.5];
pg1.EdgeColor = 'None';

pgon2 = polyshape([1 15 15],[1 1 15]);
pg2 = plot(pgon2);
pg2.FaceColor = [1 0 0];
pg2.EdgeColor = 'None';

pgon3 = polyshape([1 1e3 1e3 6],[1 1 6 6]);
pg3 = plot(pgon3);
pg3.FaceColor = [1 0.5 0];
pg3.EdgeColor = 'None';

pgon4 = polyshape([1 1e6 1e6 40],[1 1 40 40]);
pg4 = plot(pgon4);
pg4.FaceAlpha = 0.1;
pg4.FaceColor = [0.5 1 0];
pg4.EdgeColor = 'None';

text(3e5,1e7,1,'All-to-all line','FontSize',18)
text(2e5,1e1,1,'Ion trap','FontSize',18)
text(2e5,1e2,1,'Superconfuctor','FontSize',18)
text(2e5,1e3,1,'Neutral atom','FontSize',18)
text(2e5,1e4,1,'CMOS integration','FontSize',18)

text(1.3,1.3,3e8,'TSMC N3 Transistor density','FontSize',18,'Color','b')
text(2000*1.2,40*1.2,6e7,'Density improvement with tuning','FontSize',18)
text(2000*1.2,40*1.2,1e6,'Diffraction limit','FontSize',18)

scatter3(1e5,1e1,1,'r','filled')
scatter3(1e5,1e2,1,30,[1 0.5 0],'filled')
scatter3(1e5,1e3,1,30,[0.5 1 0],'filled')
scatter3(1e5,1e4,1,30,'k','filled')
set(gca, 'XScale', 'log', 'YScale', 'log', 'ZScale', 'log')
view(20,50)
zlim([0 1e10])
zlabel('Density (1/mm^2)')
hold off
