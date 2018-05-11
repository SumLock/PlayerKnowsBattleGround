//設定按下小鍵盤2的方法
//發射子彈



//發射步槍子彈
if canShoot<=1
{
  instance_create_layer(x , y , 0 ,o_bullet_rifle);
  canShoot+=0.12*room_speed; //開火頻率,越小越快
}
else if canShoot > 1
{
  canShoot--;
}