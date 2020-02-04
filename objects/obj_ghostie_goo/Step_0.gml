if !(is_local) { exit; }

if (timer and !--timer)
{
x += 1;
y -= 1;
timer = 0.5*room_speed;
}