if (spawn_timer_prey and !--spawn_timer_prey)
{
instance_create_layer(irandom_range(0,64),irandom_range(0,64),"lyr_prey",obj_ghostie_goo);
spawn_timer_prey = 5*room_speed;
}
/*
if (spawn_timer_predator and !--spawn_timer_predator)
{ instance_create_layer(irandom(room_width),irandom(room_height),"lyr_prey",obj_ghostie_goo); }