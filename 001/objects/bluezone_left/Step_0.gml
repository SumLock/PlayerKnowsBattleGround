x += move_speed;

//第一次縮圈
if x <= GM.safezonex - 1920 &&  GM.room_start >= 1500
{
	move_speed = 5;
}
//第二次縮圈
else if x <= GM.safezonex - 1280  &&  GM.room_start >= 2500 
{
	move_speed = 5;
}
//第三次縮圈
else if x <= GM.safezonex - 640  &&  GM.room_start >= 3500
{
	move_speed = 5;
}
//第四次縮圈
else if x <= GM.safezonex - 0 &&  GM.room_start >= 4500
{
	move_speed = 5;	
}
else 
{
	move_speed = 0;
}

//當接觸到玩家時扣血+播放音效
touch_time ++;

if place_meeting(x,y,o_player) && GM.is_gameover == 0
{
	o_player.player_hp -= 0.15;
	if touch_time % 30 == 0
	{
	  audio_play_sound_at(sound_hit,x,y,0,0,0,1,false,1);
	}
}
if place_meeting(x,y,o_player2) && GM.is_gameover == 0
{
	o_player2.player_hp -= 0.15;
	if touch_time % 30 == 0
	{
	  audio_play_sound_at(sound_hit,x,y,0,0,0,1,false,1);
	}
}

if !place_meeting(x,y,o_player) && !place_meeting(x,y,o_player2)
{
	audio_pause_sound(sound_hit);
}
