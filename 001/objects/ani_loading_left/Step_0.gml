//設定過場布幕移動

x -= move_speed;
x = clamp(x,0,2560);

//回合開始時向兩側移動
if GM.room_start == 150
{
	move_speed = 50;
}
//回合結束時向中間移動
else if !instance_exists(o_player)
{
  if o_player1_dead.dead_ani_count == 300
  {	
   	move_speed = -50;
  }
}
else if !instance_exists(o_player2)
{
  if o_player2_dead.dead_ani_count == 300
  {	
   	move_speed = -50;
  }
}
