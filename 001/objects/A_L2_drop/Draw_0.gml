if ext_time % 9 >= 8
{
    draw_sprite_ext(A_L2,image_index,x,y-10,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 7
{
    draw_sprite_ext(A_L2,image_index,x,y-5,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 6
{
    draw_sprite_ext(A_L2,image_index,x,y,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 5
{
    draw_sprite_ext(A_L2,image_index,x,y+5,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 4
{
    draw_sprite_ext(A_L2,image_index,x,y+10,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 3
{
    draw_sprite_ext(A_L2,image_index,x,y+5,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 2
{
    draw_sprite_ext(A_L2,image_index,x,y,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 1
{
    draw_sprite_ext(A_L2,image_index,x,y-5,1,1,0,image_blend,image_alpha);
}
else if ext_time % 9 >= 0 
{
    draw_sprite_ext(A_L2,image_index,x,y-10,1,1,0,image_blend,image_alpha);
}