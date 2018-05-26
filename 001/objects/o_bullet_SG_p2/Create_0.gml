//狙擊槍子彈變量
//設定速度,方向,轉向
speed = 120;
if o_player.xscale == -1
{
direction = point_direction(x,y, x+o_player2.aimpoint02x*10,y-o_player2.aimpoint02y*10);
}
if o_player.xscale == 1
{
direction = point_direction(x,y, x-o_player2.aimpoint02x*10,y-o_player2.aimpoint02y*10);
}
image_angle = direction;