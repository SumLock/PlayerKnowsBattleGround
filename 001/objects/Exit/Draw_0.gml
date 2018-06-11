if place_meeting(x,y,mouse_check)
{
    draw_sprite_ext(Exit_2,image_index,x,y,3,3,0,image_blend,image_alpha);
}
else
{
    draw_sprite_ext(Exit_1,image_index,x,y,3,3,0,image_blend,image_alpha);
}