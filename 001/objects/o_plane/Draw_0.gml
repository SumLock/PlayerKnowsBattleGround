
draw_sprite_ext(plane,image_index,x,y,1,1,0,image_blend,image_alpha);

//繪製引導下飛機的標語
if o_player.is_onplane == 1 || o_player2.is_onplane == 1
{
   draw_text_ext_transformed_color(x-475,y+150,"Press S or vk_down to leave the plane.",10,400,3,3,0,c_black,c_black,c_black,c_black,1);
}

if GM.is_planemute == 0
{
   draw_text_ext_transformed_color(x-340,y+200,"Press M to MUTE THE PLANE.",10,400,3,3,0,c_black,c_black,c_black,c_black,1);
}
if GM.is_planemute == 1
{
   draw_text_ext_transformed_color(x-340,y+200,"Press M to UNMUTE THE PLANE.",10,400,3,3,0,c_black,c_black,c_black,c_black,1);
}