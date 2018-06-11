if is_check == 1 
{
	draw_sprite_ext(Cancel,image_index,x,y,3,3,0,image_blend,image_alpha);
}
else if place_meeting(x,y,mouse_check)
{
    draw_sprite_ext(Start_2,image_index,x,y,3,3,0,image_blend,image_alpha);
}
else
{
    draw_sprite_ext(Start_1,image_index,x,y,3,3,0,image_blend,image_alpha);
}