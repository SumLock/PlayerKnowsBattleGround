xscale = sign(o_player.x - x);
image_speed = 0.12;
stop = 0;

//死亡動畫倒數
dead_ani_count = 0;
dead_ani_count = clamp(dead_ani_count,0,451);

audio_play_sound_at(sound_dead01,x,y,0,0,0,1,false,1);