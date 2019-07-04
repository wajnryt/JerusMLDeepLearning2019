
for count = 1:1000
    px = randi([1 500],1,3);
    py = randi([1,500],1,3);
    
    x1 = px(1); y1 = py(1);
    x2 = px(2); y2 = py(2);
    x3 = px(3); y3 = py(3);
    
    myfig = figure;
    plot([x1,x2],[y1,y2],'r-');hold on;
    plot([x1,x3],[y1,y3],'r-');hold on;
    plot([x2,x3],[y2,y3],'r-');hold on;
    xlim([1,500]);
    ylim([1,500]);
    set(gca,'visible','off')
    set(gca,'xtick',[])
    print(strcat('./triangles/',num2str(count)),'-dpng')
    close all;
end
