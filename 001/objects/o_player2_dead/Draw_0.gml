//繪製死亡動畫
if stop == 0
{
draw_sprite_ext(player02_dead,image_index,x,y,-xscale,1,0,image_blend,image_alpha);
}
else
{
draw_sprite_ext(player02_dead,18,x,y,-xscale,1,0,image_blend,image_alpha);
}