//--拾取槍枝補給品的部分--// 
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
//---------------------------//
//撿拾Lv1頭盔的情況
if place_meeting(x , y , H_L1_drop) 
{
	helm_type = 1;
	player_helm = 100;
	helm_resist = 0.7;
}
//撿拾Lv2頭盔的情況
if place_meeting(x , y , H_L2_drop) 
{
	helm_type = 2;
	player_helm = 125;
	helm_resist = 0.6;
}
//撿拾Lv3頭盔的情況
if place_meeting(x , y , H_L3_drop) 
{
	helm_type = 3;
	player_helm = 175;
	helm_resist = 0.45;
}
//撿拾Lv1護甲的情況
if place_meeting(x , y , A_L1_drop) 
{
	vest_type = 1;
	player_vest = 120;
	vest_resist = .7;
}
//撿拾Lv2護甲的情況
if place_meeting(x , y , A_L2_drop) 
{
	vest_type = 2;
	player_vest = 150;
	vest_resist = 0.6;
}
//撿拾Lv3護甲的情況
if place_meeting(x , y , A_L3_drop) 
{
	vest_type = 3;
	player_vest = 200;
	vest_resist = 0.45;
}