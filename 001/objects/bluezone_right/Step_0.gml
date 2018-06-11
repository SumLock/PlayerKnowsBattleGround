x += move_speed;

//第一次縮圈
if x >= GM.safezonex + 1920 + 2560 &&  GM.room_start >= 1500
{
	move_speed = -5;
}
//第二次縮圈
else if x >= GM.safezonex + 1280 + 2560 &&  GM.room_start >= 2500
{
	move_speed = -5;
}
//第三次縮圈
else if x >= GM.safezonex + 640 +2560 &&  GM.room_start >= 3500
{
	move_speed = -5;
}
//第四次縮圈
else if x >= GM.safezonex + 0 +2560 &&  GM.room_start >= 4500 
{
	move_speed = -5;	
}
else 
{
	move_speed = 0;
}

//當接觸到玩家時扣血+播放音效
touch_time ++;

if place_meeting(x,y,o_player) && GM.is_gameover == 0
{
	if instance_exists(o_player) && instance_exists(o_player2)
    {
	o_player.player_hp -= 0.1501;
	if touch_time % 30 == 0
	{
	  audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,2);
	}
	}
}
if place_meeting(x,y,o_player2) && GM.is_gameover == 0
{
	if instance_exists(o_player) && instance_exists(o_player2)
    {
	o_player2.player_hp -= 0.15;
	if touch_time % 30 == 0
	{
	  audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,2);
	}
	}
}

if !place_meeting(x,y,o_player) && !place_meeting(x,y,o_player2)
{
	audio_pause_sound(sound_headshot);
}
