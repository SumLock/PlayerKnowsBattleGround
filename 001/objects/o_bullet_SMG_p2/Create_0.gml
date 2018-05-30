//衝鋒槍子彈變量
//設定速度,方向,轉向
randomize();
speed = 50;
direction = point_direction(x,y,aimpoint02.x,aimpoint02.y+random_range(-15,15));
image_angle = direction;