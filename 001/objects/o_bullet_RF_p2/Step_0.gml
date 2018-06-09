//子彈碰撞偵測 (打到牆壁會消失

if place_meeting(x+10,y+10,o_block)
{
     instance_destroy();
}	
if place_meeting(x , y , o_player1_head)
{
	instance_destroy();
    o_player.player_hp -= 60*o_player.helm_resist;
	o_player.player_helm -= 60;
	audio_play_sound_at(sound_hit,x,y,0,0,0,1,false,1);
}
else if place_meeting(x , y , o_player)
{
    instance_destroy();
	o_player.player_hp -= 24*o_player.vest_resist;
    o_player.player_vest -= 24;
	audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,1);
}