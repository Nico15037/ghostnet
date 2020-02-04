drawtime = true;
if !(is_local)
{
x = net_sync_var_in(0);
y = net_sync_var_in(1);

alarm[1] = 1;
}
else
{
net_sync_var_out(0,x);
net_sync_var_out(1,y);

net_sync_me();
alarm[1] = 1;
}