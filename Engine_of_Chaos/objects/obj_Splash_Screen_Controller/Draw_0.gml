draw_sprite(sprite_index,image_index,95,236);

if(display_text){
	draw_set_font(fnt_DialogueFont);
	draw_set_color(c_white);
	draw_set_alpha(fade);
	draw_text(266,70,"Engine By \nChaoswizard98");
}

draw_set_alpha(1);