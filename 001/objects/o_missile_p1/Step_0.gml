//子彈碰撞偵測 (打到牆壁會消失
//設定飛彈轉向,TimeLine
ext_time += 0.1;

if ext_time <= 0.5
{
	speed = 10;
	direction = point_direction(x,y,aimpoint01.x,aimpoint01.y);
}
else if ext_time <= 1
{
	speed = 20;
}
else if ext_time <= 1.5
{
	speed = 30;
}
else if ext_time <= 2
{
	speed = 40;
}
else if ext_time > 2.5
{
    speed = 50;
	direction = point_direction(x,y,o_player2.x,o_player2.y);
}

image_angle = direction;

if place_meeting(x , y , o_player2) || place_meeting(x , y ,o_block)
{
     instance_destroy();
	 instance_create_depth(x,y,0,o_explosion_dmg_p1);
	 instance_create_depth(x,y,0,o_explosion_effect);
	 audio_play_sound_at(sound_explo,x,y,0,0,0,1,false,1);
}	
