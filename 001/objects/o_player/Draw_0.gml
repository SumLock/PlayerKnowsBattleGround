
//繪製玩家
draw_sprite_ext(player01, 0 , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);

//繪製槍
if xscale == 1
{
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_rifle, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
}
if xscale == -1
{
	var dir = point_direction(x,y,x+aimpoint01x,y+aimpoint01y);
	draw_sprite_ext(gun_rifle, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
}


