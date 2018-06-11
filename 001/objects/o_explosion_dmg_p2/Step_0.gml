//計算爆炸中心與玩家距離
explodis_player1 = sqrt( power(abs(x-o_player.x),2) + power(abs(y-o_player.y),2) );
explodis_player2 = sqrt( power(abs(x-o_player2.x),2) + power(abs(y-o_player2.y),2) );

//設定爆炸傷害與碰撞偵測  //設定爆炸最大傷害距離為410,爆炸中心傷害為205
if place_meeting(x , y , o_player) 
{
     instance_destroy(); 
	 if explodis_player1 <= 410
	 {
	   o_player.player_hp -= (410-explodis_player1)/410*205;
	 }
}	



if place_meeting(x , y , o_block) 
{
     instance_destroy(); 
}	


