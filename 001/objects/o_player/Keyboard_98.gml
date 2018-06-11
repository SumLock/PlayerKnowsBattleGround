//--拾取槍枝補給品的部分--// 
//依照拾取槍枝份類
//撿拾衝鋒槍的情況
if place_meeting(x , y , gun_SMG_drop) 
{
	gun_type = 1;
	gun_colddown = 1.5;  //數值越高射速越快
	audio_play_sound_at(sound_SMGpick,x,y,0,0,9999,1,false,2);
}
//撿拾霰彈槍的情況
if place_meeting(x , y , gun_SHG_drop) 
{
	gun_type = 2;
	gun_colddown = 0.15;
	audio_play_sound_at(sound_SHGpick,x,y,0,0,9999,1,false,2);
}
//撿拾步槍的情況
if place_meeting(x , y , gun_RF_drop) 
{
	gun_type = 3;
	gun_colddown = 1.2;
	audio_play_sound_at(sound_RFpick,x,y,0,0,9999,1,false,2);
}
//撿拾狙擊槍的情況
if place_meeting(x , y , gun_SG_drop) 
{
	gun_type = 4;
	gun_colddown = 0.1;
	audio_play_sound_at(sound_SGpick,x,y,0,0,9999,1,false,2);
}
//撿拾砲的情況
if place_meeting(x , y , gun_RG_drop) 
{
	gun_type = 5;
	gun_colddown = 0;
	audio_play_sound_at(sound_SGpick,x,y,0,0,9999,1,false,2);
}
//---------------------------//
//撿拾Lv1頭盔的情況
if place_meeting(x , y , H_L1_drop) 
{
	helm_type = 1;
	player_helm = 100;
	helm_resist = 0.7;
	audio_play_sound_at(sound_helpick,x,y,0,0,9999,1,false,2);
}
//撿拾Lv2頭盔的情況
if place_meeting(x , y , H_L2_drop) 
{
	helm_type = 2;
	player_helm = 125;
	helm_resist = 0.6;
	audio_play_sound_at(sound_helpick,x,y,0,0,9999,1,false,2);
}
//撿拾Lv3頭盔的情況
if place_meeting(x , y , H_L3_drop) 
{
	helm_type = 3;
	player_helm = 175;
	helm_resist = 0.45;
	audio_play_sound_at(sound_helpick,x,y,0,0,9999,1,false,2);
}
//撿拾Lv1護甲的情況
if place_meeting(x , y , A_L1_drop) 
{
	vest_type = 1;
	player_vest = 120;
	vest_resist = .7;
	audio_play_sound_at(sound_vestpick,x,y,0,0,9999,1,false,2);
}
//撿拾Lv2護甲的情況
if place_meeting(x , y , A_L2_drop) 
{
	vest_type = 2;
	player_vest = 150;
	vest_resist = 0.6;
	audio_play_sound_at(sound_vestpick,x,y,0,0,9999,1,false,2);
}
//撿拾Lv3護甲的情況
if place_meeting(x , y , A_L3_drop) 
{
	vest_type = 3;
	player_vest = 200;
	vest_resist = 0.45;
	audio_play_sound_at(sound_vestpick,x,y,0,0,9999,1,false,2);
}

//撿拾急救包的情況
if place_meeting(x , y , med_drop) && player_hp != 100
{
   player_hp = lerp(player_hp , 100 , .7); 
   audio_play_sound_at(sound_med,x,y,0,0,9999,1,false,2);
}