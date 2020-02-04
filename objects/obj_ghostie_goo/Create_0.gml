is_local = true; show_debug_message(string(is_local) + " LOCALITY");
clientID = -1;

var negpos = irandom(1);
if (negpos == 0)
{ move = 1; } else { move = -1; }

image_blend = c_black;

alarm[0] = 1;
alarm[1] = 1*room_speed;

drawtime = false;

timer = 0.5*room_speed;

myvars = -1;