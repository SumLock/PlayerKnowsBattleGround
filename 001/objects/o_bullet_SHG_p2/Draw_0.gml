//繪製噴血動畫
//當子彈擊中玩家時
if place_meeting(x , y , o_player)
{
  draw_sprite_ext(blood,image_index,x+45*sign(o_player2.x-o_player.x),y,1,1,direction,image_blend,image_alpha);
  image_speed = 10;
}
else
  draw_sprite_ext(gun_bullet,image_index,x,y,1,1,direction,image_blend,image_alpha);