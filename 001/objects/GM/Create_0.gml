//倒數計時器
count_down = 0;

depth = -300

//設定房間的變數
havewincount = 0;
player1wins = 0;
player2wins = 0;
room_number = 1;
is_gameover = 0;

//設定是否生成飛彈
RG_drop_random = 0;

//設定飛機是否存在
is_planeext = 1;

//設定房間開始時間多久
room_start = 0;

//是否已創造按紐
havecreatebutton = 0;

//勝利後的倒數
wincount_down = 0;

//是否已播放吃雞音樂
is_winplay = 0;

randomize();
//隨機選擇一個縮圈中心點
safezonex = irandom_range(500,4620);

audio_play_sound(sound_backnosiy, 10, true);

//是否靜音飛機
is_planemute = 0;

//設定音源位置
audio_listener_position(2560,1024,0);
audio_listener_orientation(0, 0, 1000, 0, -1, 0);

