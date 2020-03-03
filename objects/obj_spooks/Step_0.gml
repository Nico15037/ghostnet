// Move
if !(is_local) { exit; }
image_alpha = progress/100;

if !(distance_to_point(xtar,ytar) < move_speed)
{

dir = point_direction(x,y,xtar,ytar);

if !(x == xtar)
{ hsp = lengthdir_x(move_speed,dir); x += hsp; }

if !(y == xtar)
{ vsp = lengthdir_y(move_speed,dir); y += vsp; }

}