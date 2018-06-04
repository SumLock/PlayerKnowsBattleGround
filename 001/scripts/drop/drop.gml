    //隨機生成武器補給護甲頭盔在地面(非固態區域)
  randomize();
  
  RG_drop_random = irandom_range(1,2);
	//生成狙擊1把
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SG_drop);
    //生成衝鋒槍3把 
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SMG_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SMG_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SMG_drop);
    //生成步槍3把
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_RF_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_RF_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_RF_drop);
    //生成霰彈槍3把
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SHG_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SHG_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , gun_SHG_drop);
   
    //生成一級甲3個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L1_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L1_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L1_drop);
    //生成二級甲2個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L2_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L2_drop);
    //生成三級甲1個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , A_L3_drop);
    //生成一級頭3個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L1_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L1_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L1_drop);
    //生成二級頭2個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L2_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L2_drop);
    //生成三級頭1個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , H_L3_drop);
  
    //生成補包3個
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , med_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , med_drop);
  instance_create_depth(irandom_range(500,4620) , irandom_range(0,1548) , 0 , med_drop);