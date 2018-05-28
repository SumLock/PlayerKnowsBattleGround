
//繪製血條
draw_sprite_ext(HP_BAR, player_hp , x+10 , y-220 , 1 , 1 , 0 , image_blend , image_alpha);

if !place_meeting(x,y+40,o_block)
{
	//繪製玩家跳躍圖像
   draw_sprite_ext(player01_jump, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
   image_speed = .5;
}
else if hspeed_ > 3 || hspeed_ < -3
{
	//繪製玩家移動圖像
	draw_sprite_ext(player01_walk, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
	 image_speed = .5;
}
else
{
	//繪製玩家
    draw_sprite_ext(player01_idle, image_index , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);
	image_speed = .5;
}

//繪製Lv1頭盔和防護值的情況
if (helm_type == 1)
{
    draw_sprite_ext(LV1Helmdrop, 0 , x-120 ,y-185 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_helm/100*100 , x+10 , y-185 , 1 , 0.5 , 0 , image_blend , image_alpha);
	if (xscale == 1)
	{
    draw_sprite_ext(H_L1, 0 , x-8 ,y-80 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
	if (xscale == -1)
	{
    draw_sprite_ext(H_L1, 0 , x+6 ,y-80 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
}
//繪製Lv2頭盔和防護值的情況
if (helm_type == 2)
{
    draw_sprite_ext(LV2Helmdrop, 0 , x-120 ,y-185 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_helm/125*100 , x+10 , y-185 , 1 , 0.5 , 0 , image_blend , image_alpha);
	if (xscale == 1)
	{
    draw_sprite_ext(H_L2, 0 , x-4 ,y-80 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
	if (xscale == -1)
	{
    draw_sprite_ext(H_L2, 0 , x+2 ,y-80 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
}
//繪製Lv3頭盔和防護值的情況
if (helm_type == 3)
{
    draw_sprite_ext(LV3Helmdrop, 0 , x-120 ,y-185 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_helm/175*100 , x+10 , y-185 , 1 , 0.5 , 0 , image_blend , image_alpha);
	if (xscale == 1)
	{
    draw_sprite_ext(H_L3, 0 , x-2 ,y-83 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
	if (xscale == -1)
	{
    draw_sprite_ext(H_L3, 0 , x ,y-83 , xscale , 1 , 0 ,image_blend,image_alpha);
	}
}
//繪製Lv1護甲防護值的情況
if (vest_type == 1)
{
	draw_sprite_ext(A_L1, 0 , x-120 ,y-150 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_vest/120*100 , x+10 , y-155 , 1 , 0.5 , 0 , image_blend , image_alpha);
}
//繪製Lv2護甲防護值的情況
if (vest_type == 2)
{
	draw_sprite_ext(A_L2, 0 , x-120 ,y-150 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_vest/150*100 , x+10 , y-155 , 1 , 0.5 , 0 , image_blend , image_alpha);
}
//繪製Lv3護甲防護值的情況
if (vest_type == 3)
{
	draw_sprite_ext(A_L3, 0 , x-120 ,y-150 , 0.5 , 0.5 , 0 ,image_blend,image_alpha);
	draw_sprite_ext(HP_BAR, player_vest/200*100 , x+10 , y-155 , 1 , 0.5 , 0 , image_blend , image_alpha);
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
