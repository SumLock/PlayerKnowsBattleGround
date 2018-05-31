
//設定被撿取後消失

if place_meeting(x , y , o_player2) && o_player2.player_hp != 100
{
	instance_destroy();
}