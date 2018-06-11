//飛機固定向右飛
x += 7;

//飛離地圖時消失
if (x >= 5400)
{
   GM.is_planeext = 0;
   instance_destroy();
   audio_stop_sound(sound_plane);
}

//跳傘碰撞偵測
o_player.is_readytojump = 1;
o_player2.is_readytojump = 1;

if place_meeting(x+30,y+30,o_cantpass)
{
  o_player.is_readytojump = 0;
  o_player2.is_readytojump = 0;
}

