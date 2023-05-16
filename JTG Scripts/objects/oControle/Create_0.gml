global.morto = false;
global.velocidade = -2;
global.pont = 0; //global da pontuação
//inventário de armas
alarm[0] = 1;
alarm[1] = 1;
alarm[2] = 1;

padrao_obstaculo = -1;
padrao_obstaculo2 = -1;

init_button();

if !audio_is_playing(snd_musica_fundo){audio_play_sound(snd_musica_fundo,1,true);}