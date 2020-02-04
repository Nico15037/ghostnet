draw_text_color(x,y+20,string(x),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+40,string(y),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+60,string(progress),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
draw_text_color(x,y+80,"level " + string(level),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);

if (drawtime)
{
draw_text_color(x,y+110,string(ds_list_size(myvars)),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
}