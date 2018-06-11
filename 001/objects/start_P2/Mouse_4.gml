//左鍵按下後確認準備 再次按下則否
if is_check == 0
{
   is_check = 1;
   audio_play_sound_at(sound_mouse01,x,y,0,0,0,1,false,1);
}
else
{
   is_check = 0;
   audio_play_sound_at(sound_mouse01,x,y,0,0,0,1,false,1);
}