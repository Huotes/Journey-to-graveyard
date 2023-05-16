if global.morto == false{
	padrao_obstaculo = irandom(4);
	
	switch padrao_obstaculo{
	
	case 0 : var _inst = instance_create_layer(room_width,115,"Instances",oObstaculo);
			_inst.image_index = irandom(2);
			
	break;
	
	case 1 : 
	var _yy = -10;
	repeat(3){
	var _inst = instance_create_layer(room_width,115 + _yy,"Instances",oObstaculo);
			_inst.image_index = 0;
			_yy += 10;
	}
	break;
	
	case 2 : 
	var _xx = -20;
	repeat(2){
	var _inst = instance_create_layer(room_width + _xx,115,"Instances",oObstaculo);
			_inst.image_index = 1;
			_xx += 25;
	}
	break;
	
	case 3 : 
	var _xx = -20;
	repeat(3){
	var _inst = instance_create_layer(room_width + _xx,115,"Instances",oObstaculo);
			_inst.image_index = 1;
			_xx += 13;
	}
	break;
	
	case 4 : 
	var _xx = -20;
	repeat(2){
	var _inst = instance_create_layer(room_width + _xx,115,"Instances",oObstaculo);
			_inst.image_index = 2;
			_xx += 25;
				}

			break;
			
	
	}
	
	


alarm[0] = irandom_range(room_speed * 1, room_speed * 1.4);
}
