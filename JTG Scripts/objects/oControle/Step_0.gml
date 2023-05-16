
if instance_exists(oPlayer){
if !instance_exists(oPlayer){oPlayer.selectedweapon = 0;}
}




if global.morto == false {
global.velocidade -= 1/600;
global.pont += 1/6;
layer_hspeed("Background",global.velocidade);

if global.morto == false and global.pont >= 1000{
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
layer_background_change(back_id,spr_bg2);
layer_sprite_change(back_id,spr_bg2);
layer_hspeed("Background",global.velocidade);
}

}else{
global.velocidade = 0;
layer_hspeed("Background",0);


}



