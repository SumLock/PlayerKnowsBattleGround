//設定按下小鍵盤5的方法

//--發射子彈部分--//
//發射衝鋒槍子彈
if (gun_type == 1)
{
   if canShoot<=1
   {
     instance_create_layer(x , y-15, 0 ,o_bullet_SMG_p1);
     canShoot += 0.07*room_speed; //開火頻率,越小越快
   }
   else if canShoot > 1
   {
     canShoot--;
   }
}
//發射霰彈槍子彈
if (gun_type == 2)
{
   if canShoot<=1
   {
     instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
	 instance_create_layer(x , y-15 , 0 ,o_bullet_SHG_p1);
     canShoot += 0.85*room_speed; //開火頻率,越小越快 
   }
   else if canShoot > 1
   {
     canShoot--;
   }
}
//發射步槍子彈
if (gun_type == 3)
{
   if canShoot<=1
   {
     instance_create_layer(x , y-10 , 0 ,o_bullet_RF_p1);
     canShoot += 0.12*room_speed; //開火頻率,越小越快
   }
   else if canShoot > 1
   {
     canShoot--;
   }
}
//發射狙擊槍子彈
if (gun_type == 4)
{
   if canShoot<=1
   {
     instance_create_layer(x , y-30 , 0 ,o_bullet_SG_p1);
     canShoot += 1.2*room_speed; //開火頻率,越小越快
   }
   else if canShoot > 1
   {
     canShoot--;
   }
}
//發射砲彈
if (gun_type == 5)
{
   if canShoot<=1
   {
     instance_create_layer(x , y , 0 ,o_bullet_SMG_p1);
     canShoot += 3*room_speed; //開火頻率,越小越快
   }
   else if canShoot > 1
   {
     canShoot--;
   }
} 