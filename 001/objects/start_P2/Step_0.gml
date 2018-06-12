if place_meeting(x,y,mouse_check) && is_play == 0
{
	if Credit.is_check == 0
    {
    audio_play_sound_at(sound_mouse02,x,y,0,0,0,1,false,1);
	is_play = 1;
    }
}
if !place_meeting(x,y,mouse_check)  
{
	is_play = 0;
}