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