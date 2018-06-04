//在飛機上時準備跳傘

if (o_plane.x > 200) && is_onplane == 1
{
	if is_readytojump == 1
	{
      x = o_plane.x;
      y = o_plane.y;
      vspeed_ = 4;
      visible = true;
      is_onplane = 0;
	}
}
