clear
close all

points = 2000;
x = zeros(points,1)+0.0001;
y = zeros(points,1)+0.0001;
sz = zeros(points,1)';

Golden_Angle = (1 - sqrt(5))/2;
protospacer = 0.01;
protoangel = 0;

fig = figure;
fig.Position = [300,50,650,650];
fig.Color = 'w';
ax = axes(fig,'Position',[0 0 1 1]);
h = scatter(ax,zeros(1,1),zeros(1,1),1,1,'filled','MarkerEdgeColor','k');
colormap(ax, 'hsv')
ax.XLim = [-30 30];
ax.YLim = [-30 30];
ax.YColor = 'w';
ax.XColor = 'w';
for i = 1:points
    if i==600
        colormap(ax, 'prism')
    elseif i==1200
        colormap(ax, 'colorcube')
    end
    x(i) = sin(protoangel) * protospacer;
    y(i) = cos(protoangel) * protospacer;
    protospacer = protospacer + 0.02;
    protoangel = protoangel + (2*pi())/Golden_Angle;
    sz(i) = 0.25*i+10;
    h.XData = x(1:i);
    h.YData = y(1:i);
    h.CData = sz(1:i);
    h.SizeData = sz(1:i);
    pause(0)
end