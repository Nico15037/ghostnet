is_local = true;
clientID = -1;

xtar = x;
ytar = y;
hsp = 0;
vsp = 0;
dir = 0;

stage = 0;
level = 0;
progress = 75;
image_alpha = progress/100;

move_speed = 4;

alarm[0] = 1;
alarm[1] = 1*room_speed;

drawtime = false;

clothes = array_create(16); //18 stages in total though
clothes[@ 1] = spr_bowtie;