//子彈碰撞偵測 (打到牆壁會消失

if place_meeting(x+10,y+10,o_block)
{
     instance_destroy();
}	
if place_meeting(x , y , o_player2_head)
{
	instance_destroy();
    o_player2.player_hp -= 45*o_player2.helm_resist;
	o_player2.player_helm -= 45;
	audio_play_sound_at(sound_hit,x,y,0,0,0,1,false,1);
}
else if place_meeting(x , y , o_player2)
{
    instance_destroy();
	o_player2.player_hp -= 18*o_player2.vest_resist;
    o_player2.player_vest -= 18;
	audio_play_sound_at(sound_headshot,x,y,0,0,0,1,false,1);
}