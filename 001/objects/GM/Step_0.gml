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
    instance_create_depth(2550,120,0,gun_RG_drop);
  }
  else
  {
    instance_create_depth(2550,120,0,gun_SG_drop);
  }
}
//當在第三場景時
if room_number == 3
{
   count_down += 1;
   count_down = clamp(count_down,0,3601);
}
if count_down == 3300
{
   drop();
}
if count_down == 3600
{
  if RG_drop_random == 1 
  {
    instance_create_depth(1980,1350,0,gun_RG_drop);
  }
  else
  {
    instance_create_depth(1980,1350,0,gun_SG_drop);
  }
}

//當Bo3比分一方達到兩分時
if player1wins == 2 ||  player2wins == 2
{
   if !instance_exists(o_player)
   {
	   o_player2.player_hp = 9999;
   }
   if !instance_exists(o_player2)
   {
	   o_player.player_hp = 9999;
   }
   is_gameover = 1;
   depth = -500;
   wincount_down ++;
   if havecreatebutton == 0 && wincount_down >= 200
   {
     instance_create_depth(2560,1500,-500,Restart);
     instance_create_depth(2560,1800,-500,Exit);
     havecreatebutton = 1
   }  
} 

//勝負判斷
if !instance_exists(o_player) && is_gameover == 0
{
   o_player2.player_hp = 9999;
   if havewincount == 0
   {
	   player2wins ++;
	   havewincount ++;
   }
}
if is_gameover == 0 && !instance_exists(o_player) 
{
  if room_number <= 3 && o_player1_dead.dead_ani_count >= 450
  {
   is_planeext = 1;
   room_number ++;
   havewincount = 0;
   room_start = 0;
   room_goto_next();
   randomize();
   //隨機選擇一個縮圈中心點
   safezonex = irandom_range(500,4620);
   bluezone_left.x = 0;
   bluezone_right.x = 5120;
  }
}

if !instance_exists(o_player2) && is_gameover == 0 
{
   o_player.player_hp = 9999;
   if havewincount == 0
   {
	   player1wins ++;
	   havewincount ++;
   }
}
if is_gameover == 0 && !instance_exists(o_player2) 
{
  if room_number <= 3 && o_player2_dead.dead_ani_count >= 450
  {
   is_planeext = 1;
   room_number ++;
   havewincount = 0;
   room_start = 0;
   room_goto_next();
   randomize();
   //隨機選擇一個縮圈中心點
   safezonex = irandom_range(500,4620);
   bluezone_left.x = 0;
   bluezone_right.x = 5120;
  }
}

//房間計時器
room_start ++ ;
room_start = clamp(room_start,0,12000);

if player1wins == 2 ||  player2wins == 2
{
   if is_winplay == 0
   {
	   audio_play_sound(sound_win, 1, true);
	   is_winplay = 1;
   }
} 




