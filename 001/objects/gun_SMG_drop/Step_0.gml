//重力偵測
if !place_meeting(x ,y+10 ,o_cantpass)
{
	vspeed_ += gravity_;
}


//垂直碰撞偵測
if place_meeting(x,y+10,o_cantpass)
{
	instance_destroy();
}
else if place_meeting(x,y+70,o_cantpass)
{
	vspeed_ = 0;
}	

y += vspeed_;

ext_time += 0.05 ;