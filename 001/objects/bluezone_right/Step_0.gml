x += move_speed;

//第一次縮圈
if x >= GM.safezonex + 1920 &&  GM.room_start >= 1500
{
	move_speed = -5;
}
//第二次縮圈
else if x >= GM.safezonex + 1280  &&  GM.room_start >= 2500
{
	move_speed = -5;
}
//第三次縮圈
else if x >= GM.safezonex + 640  &&  GM.room_start >= 3500
{
	move_speed = -5;
}
//第四次縮圈
else if x >= GM.safezonex + 0 &&  GM.room_start >= 4500 
{
	move_speed = -5;	
}
else 
{
	move_speed = 0;
}