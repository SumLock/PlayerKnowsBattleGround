
if touch_time % 864 >= 768
{
    draw_sprite_ext(blue_left,image_index,x,y,-1,1,0,image_blend,0.4);
}
else if touch_time % 864 >= 672
{
    draw_sprite_ext(blue_left,image_index,x,y,-1,-1,0,image_blend,0.4);
}
else if touch_time % 864 >= 576
{
    draw_sprite_ext(blue_left,image_index,x,y,1,-1,0,image_blend,0.4);
}
else if touch_time % 864 >= 480
{
    draw_sprite_ext(blue_left,image_index,x,y,-1,1,0,image_blend,0.4);
}
else if touch_time % 864 >= 384
{
    draw_sprite_ext(blue_left,image_index,x,y,1,1,0,image_blend,0.4);
}
else if touch_time % 864 >= 288
{
    draw_sprite_ext(blue_left,image_index,x,y,-1,-1,0,image_blend,0.4);
}
else if touch_time % 864 >= 192
{
    draw_sprite_ext(blue_left,image_index,x,y,1,-1,0,image_blend,0.4);
}
else if touch_time % 864 >= 96
{
    draw_sprite_ext(blue_left,image_index,x,y,-1,1,0,image_blend,0.4);
}
else if touch_time % 864 >= 0
{
    draw_sprite_ext(blue_left,image_index,x,y,1,1,0,image_blend,0.4);
}