//碰觸到荊棘時死亡

if place_meeting(x,y,o_player) && GM.is_gameover == 0
{
	o_player.player_hp -= 100;
}

if place_meeting(x,y,o_player2) && GM.is_gameover == 0
{
	o_player2.player_hp -= 100;
}
