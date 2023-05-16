if global.morto == false{
x -= abs(global.velocidade + -2 );

if x <= -100{instance_destroy();}
if hit = true {
	if !audio_is_playing(snd_hit){audio_play_sound(snd_hit,8,false);}
	empurrar_spd = lerp(empurrar_spd, 0, 0.2);
		
	hspd = lengthdir_x(empurrar_spd, empurrar_dir);
	vspd = lengthdir_y(empurrar_spd, empurrar_dir);
	instance_destroy();
	}
}

floatdir += floatspd;
y = ystart + dsin(floatdir)*8;