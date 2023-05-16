#region Movimentação
if global.morto == false{
cima = keyboard_check(vk_space);
direita = keyboard_check(vk_right) or keyboard_check(ord("D")) ;
esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"));
hveloc = (direita - esquerda) * veloc;


//troca de sprite
if mouse_check_button(mb_right) and global.morto == false{
	
	if !instance_exists(oHitboxpunch){instance_create_layer(x + 10,y,"Instances",oHitboxpunch);}
	sprite_index = sGhostPunch}
	
	if !mouse_check_button(mb_right) and global.morto == false and falling == true{sprite_index = sGhostRun}
	

if !place_meeting(x,y+1,oWall){
	//queda
	vspd += gravidade;	
	
		if vspd > 0{
			falling = true;
			}
			}else{
				//pulo
				if cima{
					vspd = jump;
					sprite_index = sGhostJumping;
					audio_play_sound(snd_pulo,1,false);
					}
					}
		
		var _inst = instance_place(x,y + vspd, oWall);
		if _inst{while !instance_place(x,y+ sign(vspd), oWall){y += sign(vspd);}
		falling = false;
		vspd = 0;
	   if !mouse_check_button(mb_right) and sprite_index != sGhostJumping {sprite_index = sGhostRun}
		}
	
	if place_meeting(x + hveloc, y, oWall){
		while !place_meeting(x + sign(hveloc),y,oWall){
			x += sign(hveloc);
		
		}
		hveloc = 0;
	}
	
		y += vspd;
		x += hveloc;
		
		if direita{
	direc = 0;
	sprite_index = sGhostRun;
	}else if esquerda{
	direc = 1;
	sprite_index = sGhostRe;
	}


#endregion

//morte 
if place_meeting(x,y,oObstaculo)  and global.morto == false{
	global.morto = true;
	sprite_index = sGhostDead;
	audio_play_sound(snd_hit,1,false);
	
}

if place_meeting(x,y,oObstaculoAereo)  and oObstaculoAereo.hit == false and global.morto == false{
	global.morto = true;
	sprite_index = sGhostDead;
	audio_play_sound(snd_hit,1,false);
	
}



}
if scr_fim_animacao() and global.morto == true{instance_destroy();}
