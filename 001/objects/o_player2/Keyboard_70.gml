//設定按下小鍵盤5的方法

//--發射子彈部分--//
//發射衝鋒槍子彈
if (gun_type == 1)
{
   if canShoot>=1
   {
     instance_create_depth(x , y+20, 0 ,o_bullet_SMG_p2);
	 audio_play_sound_at(sound_SMG,x,y,0,0,0,1,false,1);
     canShoot = 0;
   }
}
//發射霰彈槍子彈
if (gun_type == 2)
{
   if canShoot>=1
   {
     instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 instance_create_depth(x , y+20 , 0 ,o_bullet_SHG_p2);
	 audio_play_sound_at(sound_SHG,x,y,0,0,0,1,false,1);
     canShoot = 0;
   }
}
//發射步槍子彈
if (gun_type == 3)
{
   if canShoot>=1
   {
     instance_create_depth(x , y+30 , 0 ,o_bullet_RF_p2);
	 audio_play_sound_at(sound_RF,x,y,0,0,0,1,false,1);
     canShoot = 0;
   }
}
//發射狙擊槍子彈
if (gun_type == 4)
{
   if canShoot>=1
   {
     instance_create_depth(x , y , 0 ,o_bullet_SG_p2);
	 audio_play_sound_at(sound_SG,x,y,0,0,0,1,false,1);
     canShoot = 0;
   }
}
//發射砲彈
if (gun_type == 5)
{
   if canShoot>=1
   {
     instance_create_depth(x , y , 0 ,o_missile_p2);
	 audio_play_sound_at(sound_missile,x,y,0,0,0,1,false,1);
     canShoot = 0;
   }
} 