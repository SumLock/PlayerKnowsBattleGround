//步槍子彈變量
//設定速度,方向,轉向
randomize();
speed = 60;
direction = point_direction(x,y,aimpoint01.x,aimpoint01.y+random_range(-10,10));
image_angle = direction;