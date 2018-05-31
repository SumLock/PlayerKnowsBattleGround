
//設定被撿取後消失

if place_meeting(x , y , o_player) && o_player.player_hp != 100
{
	instance_destroy();
}