draw_sprite_ext(loading_left,image_index,x,y,1,1,0,image_blend,image_alpha);

//繪製計分板
draw_sprite_ext(player02_idle,0,x-200,y-400,1,1,0,image_blend,image_alpha);
if GM.player2wins == 2
{
	draw_text_ext_transformed_color(x-235,y-800,GM.player2wins,10,400,9,9,0,c_green,c_green,c_green,c_green,1);
}
else
{
    draw_text_ext_transformed_color(x-235,y-800,GM.player2wins,10,400,9,9,0,c_white,c_white,c_white,c_white,1);
}