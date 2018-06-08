//當滑鼠移到上面時顯示教學
if place_meeting(x,y,mouse_check)
{
	draw_sprite_ext(player02_guide,image_index,mouse_x,mouse_y,1,1,0,image_blend,0.9);
}