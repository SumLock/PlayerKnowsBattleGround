//倒數後生成武器
//當在第一場景時
if room_number == 1
{
   count_down += 1;
   count_down = clamp(count_down,0,1001);
}
if count_down == 1000
{
   drop();
}
//當在第二場景時
if room_number == 2
{
   count_down += 1;
   count_down = clamp(count_down,0,2301);
}
if count_down == 2000
{
   drop();
}
if count_down == 2300
{
  if RG_drop_random == 1 
  {
    instance_create_depth(2550,420,0,gun_RG_drop);
  }
  else
  {
    instance_create_depth(2550,420,0,gun_SG_drop);
  }
}
//當在第三場景時
if room_number == 3
{
   count_down += 1;
   count_down = clamp(count_down,0,3301);
}
if count_down == 3300
{
   drop();
}

//當Bo3比分一方達到兩分時
if player1wins == 2 ||  player2wins == 2
{
   is_gameover = 1;
}

//勝負判斷
if !instance_exists(o_player) && is_gameover == 0
{
   o_player2.player_hp = 9999;
   player2wins ++;
   room_number ++;
   if room_number <= 3 && is_gameover == 0
   {
    room_goto_next();
   }
}

if !instance_exists(o_player2) && is_gameover == 0
{
   o_player.player_hp = 9999;
   player1wins ++;
   room_number ++;
   if room_number <= 3 && is_gameover == 0
   {
    room_goto_next();
   }
}


