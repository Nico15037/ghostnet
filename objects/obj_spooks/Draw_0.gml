draw_self();

if (stage > 0)
{
draw_sprite_ext(clothes[@ stage],0,x,y,image_yscale,image_yscale,0,c_white,image_alpha);
}

draw_text_color(x,y+20,string(x),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+40,string(y),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+60,string(progress),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+80,"level " + string(level),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);

if (drawtime)
{
draw_text_color(x,y+110,string(ds_list_size(myvars)),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
}