//子彈碰撞偵測 (打到牆壁會消失

if place_meeting(x+10,y+10,o_block)
{
        instance_destroy();
}	
if place_meeting(x , y , o_player2_head)
{
	instance_destroy();
    o_player2.player_hp -= 100;
}
else if place_meeting(x , y , o_player2)
{
    instance_destroy();
	o_player2.player_hp -= 70;
}