//繪製勝利圖標

if player1wins == 2
{
   draw_sprite_ext(Winner,image_index,o_player.x,o_player.y-500,1,1,0,image_blend,image_alpha);
}
if player2wins == 2
{
   draw_sprite_ext(Winner,image_index,o_player2.x,o_player2.y-500,1,1,0,image_blend,image_alpha);
}

if !instance_exists(o_player) && is_gameover == 0 
{
     draw_text_ext_transformed_color(o_player2.x-380,o_player2.y-300,"Player2 wins this round.",10,400,4,4,0,c_red,c_red,c_red,c_red,1);
}

if !instance_exists(o_player2) && is_gameover == 0 
{
     draw_text_ext_transformed_color(o_player.x-380,o_player.y-300,"Player1 wins this round.",10,400,4,4,0,c_red,c_red,c_red,c_red,1);
}

//繪製毒圈接近警告
if room_start >= 1200 && room_start <= 1500
{ 
	draw_text_ext_transformed_color(2000,300,"Poison is coming soon!",10,400,6,5,0,c_blue,c_blue,c_blue,c_blue,1);
	draw_text_ext_transformed_color(2000,400,"Try to enter SAVEZONE!",10,400,6,5,0,c_blue,c_blue,c_blue,c_blue,1);
}