if (drawtime)
{

draw_text(x,y,string(myvars[| 0]));
draw_text(x,y+10,string(myvars[| 1]));
draw_text(x,y+20,string(myvars[| 2]));

draw_text(x+50,y,string(x));
draw_text(x+50,y+10,string(x));
draw_text(x+50,y+40,string(ds_list_size(myvars)));

}