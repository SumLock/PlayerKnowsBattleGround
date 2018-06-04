//繪製勝利圖標

if player1wins == 2
{
   draw_sprite_ext(Winner,image_index,o_player.x,o_player.y-300,1,1,0,image_blend,image_alpha);
}
if player2wins == 2
{
   draw_sprite_ext(Winner,image_index,o_player2.x,o_player2.y-300,1,1,0,image_blend,image_alpha);
}