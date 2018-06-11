//在飛機上時準備跳傘
if is_menu == 0
{
if GM.is_planeext == 1
{
  if (o_plane.x > 200) && is_onplane == 1
  {
	if is_readytojump == 1
	{
      x = o_plane.x-100;
      y = o_plane.y+80;
      vspeed_ = 4;
      visible = true;
      is_onplane = 0;
	  audio_play_sound_at(sound_leave,x,y,0,0,0,1,false,1);
	}
  }
}
}