//繪製噴血動畫
//當子彈擊中玩家時
if place_meeting(x , y , o_player2)
{
  draw_sprite_ext(blood,image_index,x+45*sign(o_player.x-o_player2.x),y,1,1,direction,image_blend,image_alpha);
  image_speed = 5;
}
else
  draw_sprite_ext(gun_bullet,image_index,x,y,1,1,direction,image_blend,image_alpha);