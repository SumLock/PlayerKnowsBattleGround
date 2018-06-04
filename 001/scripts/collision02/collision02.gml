

//重力偵測
if !place_meeting(x ,y+1 ,o_block)
{
	vspeed_ += gravity_;
} //跳躍設定
else if keyboard_check_pressed(ord("W"))
{
	vspeed_ = jump_max_;
}

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

