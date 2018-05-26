//--於房間開始時--//
//隨機生成武器在地面(非固態區域)

	//生成狙擊1把
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_RF_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_RF_drop);
    //生成衝鋒槍3把
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SMG_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SMG_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SMG_drop);
    //生成步槍3把
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_RF_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_RF_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_RF_drop);
    //生成霰彈槍3把
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SHG_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SHG_drop);
  instance_create_layer(random_range(0,5120) , random_range(0,2048) , 0 , gun_SHG_drop); 
