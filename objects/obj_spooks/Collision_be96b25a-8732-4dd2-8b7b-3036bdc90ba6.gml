progress += 1;
if (progress >= 100) and !(instance_exists(obj_curtain))
{ instance_create_layer(irandom(room_width),irandom(room_height),"lyr_ghost",obj_curtain); }
instance_destroy(other);