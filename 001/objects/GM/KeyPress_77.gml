//靜音飛機
if is_planemute == 0
{
	audio_stop_sound(sound_plane);
	is_planemute = 1;
}
else
{
	audio_play_sound(sound_plane,9,true);
    is_planemute = 0;
}