//根據移動加速量調整方向變量
if  hspeed_ > 0
{
	xscale = -1;

}
if  hspeed_ < 0
{
	 xscale = 1;
	 
}

var aim_1x , aim_1y , dir;
aim_1x = instance_nearest(x,y,aim_point01).x;
aim_1y = instance_nearest(x,y,aim_point01).y;
dir = point_direction(x , y , aim_1x , aim_1y);

//調整瞄準點變量 (y軸)
if keyboard_check(ord("Q"))
{
	aim_angle += 50;
	aim_angle = clamp(aim_angle,-750,750); 
}
if keyboard_check(ord("E"))
{
	aim_angle -= 50;
	aim_angle = clamp(aim_angle,-750,750); 
}
//繪製玩家
draw_sprite_ext(player01, 0 , x ,y , xscale , 1 ,0 ,image_blend,image_alpha);

//繪製瞄準點
draw_sprite_ext(aim_point01, 0 , x-(xscale*600)-abs(0.5*aim_angle)  ,y-aim_angle , xscale , 1 , 0 ,image_blend,image_alpha);


//繪製槍
draw_sprite_ext(gun_rifle, 0 , x ,y , xscale , 1 , 0.07*aim_angle-10 ,image_blend,image_alpha);


