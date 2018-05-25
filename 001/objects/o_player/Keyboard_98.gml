//設定按下小鍵盤2的方法


//--拾取槍枝部分--// 
//依照拾取槍枝份類
//撿拾衝鋒槍的情況
if place_meeting(x+2 , y , gun_SMG_drop) 
{
	gun_type = 1;
}
//撿拾霰彈槍的情況
if place_meeting(x+2 , y , gun_SHG_drop) 
{
	gun_type = 2;
}
//撿拾步槍的情況
if place_meeting(x+2 , y , gun_RF_drop) 
{
	gun_type = 3;
}
//撿拾狙擊槍的情況
if place_meeting(x+2 , y , gun_SG_drop) 
{
	gun_type = 4;
}
//撿拾砲的情況
if place_meeting(x+2 , y , gun_RG_drop) 
{
	gun_type = 5;
}


//--發射子彈部分--//
//發射衝鋒槍子彈
if (gun_type == 1)
{
   if canShoot<=1
   {
     instance_create_layer(x , y , 0 ,o_bullet_SMG);
     canShoot += 0.08*room_speed; //開火頻率,越小越快
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
     instance_create_layer(x , y , 0 ,o_bullet_SHG);
     canShoot += 0.75*room_speed; //開火頻率,越小越快
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
     instance_create_layer(x , y , 0 ,o_bullet_RF);
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
     instance_create_layer(x , y , 0 ,o_bullet_SG);
     canShoot += 1*room_speed; //開火頻率,越小越快
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
     instance_create_layer(x , y , 0 ,o_bullet_SMG);
     canShoot += 3*room_speed; //開火頻率,越小越快
   }
   else if canShoot > 1
   {
     canShoot--;
   }
} 