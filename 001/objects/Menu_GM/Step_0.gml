
//當兩方玩家都準備時開始遊戲
if start_P1.is_check == 1 && start_P2.is_check == 1 
{
	count_down ++;
}
else
{
    count_down = 0;
}

if count_down >= 100
{
   	room_goto(1);
	audio_stop_sound(sound_menu);
}

//清除上一局的GM,布幕
if instance_exists(GM)
{	
	instance_destroy(ani_loading_left);
    instance_destroy(ani_loading_right);
    instance_destroy(bluezone_left);
    instance_destroy(bluezone_right);
	instance_destroy(GM);
	audio_stop_sound(sound_win);
}
	//切換人物至主選單模式
o_player.is_parachute = 0;
o_player.is_readytojump = 0;
o_player.is_onplane = 0;
o_player.visible = true;
o_player.max_hspeed_ = 12;
o_player.gravity_ = 1;
o_player2.is_parachute = 0;
o_player2.is_readytojump = 0;
o_player2.is_onplane = 0;
o_player2.visible = true;
o_player2.max_hspeed_ = 12;
o_player2.gravity_ = 1;

o_player.is_menu = 1;
o_player2.is_menu = 1;

