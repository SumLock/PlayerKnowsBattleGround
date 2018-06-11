//繪製讀取條

if start_P1.is_check == 1 && start_P2.is_check == 1 
{
	draw_sprite_ext(HP_BAR,count_down,2560,1100,16,7,0,image_blend,image_alpha);
	draw_text_ext_transformed_color(2300,800,"Loading...",1,400,8,8,0,c_black,c_black,c_black,c_black,1);
}

draw_sprite_ext(mouseon,image_index,1600,600,1,1,0,image_blend,image_alpha);
draw_sprite_ext(mouseon,image_index,3570,600,1,1,0,image_blend,image_alpha);
draw_text_ext_transformed_color(1450,750,"How to play?",1,400,3,3,0,c_black,c_black,c_black,c_black,1);
draw_text_ext_transformed_color(3420,750,"How to play?",1,400,3,3,0,c_black,c_black,c_black,c_black,1);
