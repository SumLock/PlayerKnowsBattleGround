
//繪製血條
draw_sprite_ext(HP_BAR, player_hp , x+10 , y-170 , 1 , 1 , 0 , image_blend , image_alpha);

if !place_meeting(x ,y+1 ,o_block)
{
	//繪製玩家跳躍圖像
   draw_sprite_ext(player01_jump, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
}
else if hspeed_ > 3 || hspeed_ < -3
{
	//繪製玩家移動圖像
	draw_sprite_ext(player01_walk, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
}
else
{
	//繪製玩家
    draw_sprite_ext(player01_idle, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
}


//繪製衝鋒槍的情況
if (gun_type == 1)
{
	if xscale == 1
    {
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SMG, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
    }
    if xscale == -1
    {
	var dir = point_direction(x,y,x+aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SMG, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
    }
}
//繪製霰彈槍的情況
if (gun_type == 2)
{
	if xscale == 1
    {
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SHG, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
    }
    if xscale == -1
    {
	var dir = point_direction(x,y,x+aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SHG, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
    }
}
//繪製步槍的情況
if (gun_type == 3)
{
	if xscale == 1
    {
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_RF, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
    }
    if xscale == -1
    {
	var dir = point_direction(x,y,x+aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_RF, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
    }
}
//繪製狙擊槍的情況
if (gun_type == 4)
{
	draw_line_width_color(x , y-30 , r[1] , r[2] ,5, c_red , c_red);
	if xscale == 1
    {
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SG, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
    }
    if xscale == -1
    {
	var dir = point_direction(x,y,x+aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_SG, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
    }
}
//繪製大砲的情況
if (gun_type == 5)
{
	if xscale == 1
    {
	var dir = point_direction(x,y,x-aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_RG, 0 , x ,y , -xscale , -1 , dir ,image_blend,image_alpha);
    }
    if xscale == -1
    {
	var dir = point_direction(x,y,x+aimpoint01x,y-aimpoint01y);
	draw_sprite_ext(gun_RG, 0 , x ,y , xscale , 1 , dir ,image_blend,image_alpha);
    }
}
