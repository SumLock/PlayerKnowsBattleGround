//繪製讀取條

if start_P1.is_check == 1 && start_P2.is_check == 1 
{
	draw_sprite_ext(HP_BAR,count_down,2560,1100,16,7,0,image_blend,image_alpha);
	draw_text_ext_transformed_color(2300,800,"Loading...",1,400,8,8,0,c_black,c_black,c_black,c_black,1);
}
