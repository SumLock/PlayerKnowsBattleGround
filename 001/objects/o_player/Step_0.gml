//--基本移動碰撞偵測部分--//
//Smooth移動設定
var hinput = keyboard_check(vk_right) -  keyboard_check(vk_left);

//左右移動
if hinput != 0
{
	hspeed_ += hinput * acc_;
	//水平向量範圍
	hspeed_ = clamp(hspeed_,-max_hspeed_,max_hspeed_); 

}
else  //可微調的停止Smooth煞車動作((越小煞越慢
{
	hspeed_ = lerp(hspeed_ , 0 , .3);
}


//重力偵測
if !place_meeting(x ,y+1 ,o_block)
{
	vspeed_ += gravity_;
} //跳躍設定
else if keyboard_check_pressed(vk_up)
{
	vspeed_ = jump_max_;
}

//水平碰撞偵測
if place_meeting(x+hspeed_,y,o_block)
{
	//Smooth碰撞
	while !place_meeting(x+sign(hspeed_),y,o_block)
	{
		x += sign(hspeed_);
	}			//
	hspeed_ = 0;
}	
x += hspeed_;

//垂直碰撞偵測
if place_meeting(x,y+vspeed_,o_block)
{
	//Smooth碰撞
	while !place_meeting(x,y+sign(vspeed_),o_block)
	{
		y += sign(vspeed_);
	}			//
	vspeed_ = 0;
}	
y += vspeed_;


//--繪製武器與瞄準點部分--// 
//根據移動加速量調整方向變量
if  hspeed_ > 0
{
	xscale = -1;
}
if  hspeed_ < 0
{
    xscale = 1;
}

//調整瞄準點變量 (y軸)
if keyboard_check(vk_numpad1)
{	
	aim_angle += 1;
	aim_angle = clamp(aim_angle,30,150); 
}
if keyboard_check(vk_numpad9)
{
	aim_angle -= 1;
	aim_angle = clamp(aim_angle,30,150); 
}

//三角函數定義瞄準點XY角度
aimpoint01x = 500*sin(aim_angle/180*pi);
aimpoint01y = 500*cos(aim_angle/180*pi);

//取得Script_redline的r陣列回傳值
//產生瞄準點object
if (gun_type == 4)
{
	if (xscale == -1)
	{
     r = redline(x , y , x+aimpoint01x*10 , y-aimpoint01y*10-10, o_solid , true ,true);
	}
	if (xscale == 1)
	{
     r = redline(x , y , x-aimpoint01x*10 , y-aimpoint01y*10-10, o_solid , true ,true);
	}
}
else if (o_player.gun_type != 0) && (have_gun == false)
{
	instance_create_layer( x, y, 0 , aimpoint01);
	have_gun = true;
}

//--寫被擊中時的狀態--//
//HP歸零時
if (player_hp <= 0)
{
  instance_destroy();
  instance_destroy(o_player1_head);
  instance_destroy(aimpoint01);
}




