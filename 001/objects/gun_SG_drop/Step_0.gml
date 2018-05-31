//重力偵測
if !place_meeting(x ,y+10 ,o_block)
{
	vspeed_ += gravity_;
}

//垂直碰撞偵測
if place_meeting(x,y+10,o_block)
{
	instance_destroy();
}
else if place_meeting(x,y+70,o_block)
{
	vspeed_ = 0;
}	

y += vspeed_;