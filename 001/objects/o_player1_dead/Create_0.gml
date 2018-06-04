xscale = sign(o_player2.x - x);
image_speed = 0.12;
stop = 0;

//死亡動畫倒數
dead_ani_count = 0;
dead_ani_count = clamp(dead_ani_count,0,300);