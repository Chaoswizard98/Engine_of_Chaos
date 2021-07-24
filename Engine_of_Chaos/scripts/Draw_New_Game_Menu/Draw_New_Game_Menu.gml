function Draw_New_Game_Menu() {
	//===============
	//Draw Locations=
	//===============
	var _window_x = Get_Anchor_X("Top_Left") + 8 + window_pan;
	var _window_y = Get_Anchor_Y("Top_Left") + 72;

	var _text_x = _window_x + 22;
	var _text_y = _window_y + 10;

	var _arrow_x = _text_x - 10;
	var _arrow_y = _text_y - 1;

	var _text_increment = 12;//offset between each line of text

	//==========
	//Draw Code=
	//==========
	draw_set_color(c_white); //Default to white draw color for sprites
	draw_set_font(menu_font); //Font
	draw_set_halign(fa_left); //Alignment

	draw_sprite(spr_Save_Slot_Window,0,_window_x, _window_y);//Draw the window
	draw_sprite(spr_Menu_Arrow_Right,0,_arrow_x, _arrow_y + (arrow_position * _text_increment));//Draw the selection arrow

	for(i = start_index; i < (start_index + max_options_on_screen); i += 1){
	    if(menu_locked[i]){
	        draw_set_color(locked_font_color);
	    }
	    else{
	        draw_set_color(font_color); //Color
	    }
	    draw_text(_text_x, _text_y + ((i - start_index) * _text_increment), string_hash_to_newline(menu_options[i])); //draw the message
	}
	draw_set_color(c_white); //reset draw color



}
