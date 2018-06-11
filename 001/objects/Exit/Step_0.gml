x = 2560;
y = 1800;
depth = -550;

if place_meeting(x,y,mouse_check) && is_play == 0
{
    audio_play_sound(sound_mouse02,12,false);
	is_play = 1;
}
if !place_meeting(x,y,mouse_check)  
{
	is_play = 0;
}