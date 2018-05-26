//--拾取槍枝部分--// 
//依照拾取槍枝份類
//撿拾衝鋒槍的情況
if place_meeting(x , y , gun_SMG_drop) 
{
	gun_type = 1;
}
//撿拾霰彈槍的情況
if place_meeting(x , y , gun_SHG_drop) 
{
	gun_type = 2;
}
//撿拾步槍的情況
if place_meeting(x , y , gun_RF_drop) 
{
	gun_type = 3;
}
//撿拾狙擊槍的情況
if place_meeting(x , y , gun_SG_drop) 
{
	gun_type = 4;
}
//撿拾砲的情況
if place_meeting(x , y , gun_RG_drop) 
{
	gun_type = 5;
}
