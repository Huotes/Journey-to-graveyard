draw_set_font(Font1);
draw_set_color(c_white);
draw_text(475,10, "Score: " + string(floor(global.pont)));
//draw_text(475,30, "Speed: " + string(floor(global.velocidade)));
if global.morto == true{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(display_get_gui_width()/2,display_get_gui_height()/2-30,"Hoje não é seu dia de sorte",c_red,c_red,c_red,c_red,1);
	create_button(display_get_gui_width()/2 - 5,display_get_gui_height()/2,spr_restart);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

}
