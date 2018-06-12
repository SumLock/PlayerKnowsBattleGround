if is_check == 1
{
   draw_sprite_ext(Maker,image_index,2560,1024,1,1,0,image_blend,0.9);
   draw_text_ext_transformed_color(1620,1820,"Press any key back to menu.",1,400,8,8,0,c_black,c_black,c_black,c_black,1);
}
else if place_meeting(x,y,mouse_check)
{
    draw_sprite_ext(credit02,image_index,x,y,1,1,0,image_blend,image_alpha);
}
else
{
    draw_sprite_ext(credit01,image_index,x,y,1,1,0,image_blend,image_alpha);
}

