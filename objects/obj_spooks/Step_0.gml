// Move
image_alpha = progress/100;

dir = point_direction(x,y,xtar,ytar);

if !(x == xtar)
{ hsp = lengthdir_x(move_speed,dir); x += hsp; }

if !(y == xtar)
{ vsp = lengthdir_y(move_speed,dir); y += vsp; }

x = floor(x);
y = floor(y);