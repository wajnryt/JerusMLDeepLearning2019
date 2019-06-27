

count = 0;
while count <= 1000
    
    r = randi([1, 500],1,1);
    x = randi([1,500],1,1);
    y = randi([1,500],1,1);
    
    if (r + x >= 500 || r + y >= 500 ||  x - r <= 0 || y - r <=0)
        continue;
    end
    
    count = count + 1;
    th = 0:pi/50:2*pi;
    xunit = r * cos(th) + x;
    yunit = r * sin(th) + y;
    figure;
    plot(xunit, yunit);
    xlim([1,500]);
    ylim([1,500]);
    set(gca,'visible','off')
    set(gca,'xtick',[])
    print(strcat('./circles/',num2str(count)),'-dpng')
    
    close all;
end

