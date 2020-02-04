drawtime = true;
if !(is_local)
{
xtar = net_sync_var_in(0);
ytar = net_sync_var_in(1);
progress = net_sync_var_in(2);

alarm[1] = 1;
}
else
{
net_sync_var_out(0,xtar);
net_sync_var_out(1,ytar);
net_sync_var_out(2,progress);

net_sync_me();
alarm[1] = 1;
}