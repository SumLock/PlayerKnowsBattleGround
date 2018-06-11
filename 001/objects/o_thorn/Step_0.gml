//碰觸到荊棘時死亡

if place_meeting(x,y,o_player) && GM.is_gameover == 0
{	
	count_down++;
	if count_down >= 30
	{
	    o_player.player_hp -= 49;
		count_down = 0;
		audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,2);
	}
}

if place_meeting(x,y,o_player2) && GM.is_gameover == 0
{
	count_down++;
	if count_down >= 30
	{
	    o_player2.player_hp -= 49.001;
		count_down = 0;
	    audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,2);
	}
}


