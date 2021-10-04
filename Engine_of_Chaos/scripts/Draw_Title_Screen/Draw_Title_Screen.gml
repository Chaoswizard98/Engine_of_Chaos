function Draw_Title_Screen(){
	//===============
	//Draw Locations=
	//===============
	var _background_image_x = Get_Anchor_X("Top_Middle") - (round(sprite_get_width(bg_Title_Screen) / 2) - 1);
	var _background_image_y = Get_Anchor_Y("Top_Middle");

	var _button_x = Get_Anchor_X("Bottom_Middle") - round(sprite_get_width(spr_Start_Game_Button) / 2);
	var _button_y = Get_Anchor_Y("Bottom_Middle") - 80;//_background_image_y + 383;

	var _start_text_x = _button_x + round(sprite_get_width(spr_Start_Game_Button) / 2);
	var _start_text_y = _button_y + round(sprite_get_height(spr_Start_Game_Button) / 2) - 3;

	var _welcome_text_x = Get_Anchor_X("Top_Left") + 8;
	var _welcome_text_y = Get_Anchor_Y("Top_Left") + 8;

	//==========
	//Draw Code=
	//==========
	draw_set_color(c_white); //Default to white draw color for sprites
	draw_sprite(bg_Title_Screen,0,_background_image_x,_background_image_y); //draw title screen
	draw_sprite(spr_Start_Game_Button,0,_button_x,_button_y);

	draw_set_font(font_type); //Font
	draw_set_color(font_color); //Color
	draw_set_halign(fa_center); //Alignment

	draw_text(_start_text_x, _start_text_y, string_hash_to_newline(start_button_text)); //draw the start button text

	draw_set_halign(fa_left); //Alignment
	draw_set_color(c_lime); //Color
	draw_text(_welcome_text_x, _welcome_text_y, string_hash_to_newline(welcome_message)); //draw the welcome message

	draw_set_color(c_white); //Reset back to white draw
}