count = 0;
while count <= 1000
    x = randi([100 400],1,1);
    y = randi([100,400],1,1);
    w = randi([100,400],1,1);
    h = randi([100,400],1,1);
    
    if (x + w >= 500 || y + h >= 500)
        continue;
    end
    count = count + 1;
    myfig = figure;
    rectangle('Position',[x y w h])
    xlim([1,500]);
    ylim([1,500]);
    set(gca,'visible','off')
    set(gca,'xtick',[])
    print(strcat('./rectangles/',num2str(count)),'-dpng')
    close all;
end
