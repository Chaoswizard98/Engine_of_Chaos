function Draw_Dialogue_Window() {
	//===============
	//Draw Locations=
	//===============
	var _dialogue_window_x = Get_Anchor_X("Top_Left") + x_pos;
	var _dialogue_window_y = Get_Anchor_Y("Top_Left") + y_pos + floor(window_pan);

	var _text_x = _dialogue_window_x + 10;
	var _text_y = _dialogue_window_y + 8 + y_scroll;

	var _arrow_x = _dialogue_window_x + sprite_get_width(spr_Dialogue_Window) - 19;
	var _arrow_y = _dialogue_window_y + sprite_get_height(spr_Dialogue_Window) - 14;

	//==========
	//Draw Code=
	//==========
	draw_set_color(c_white); //Default to white draw color for sprites
	draw_sprite(spr_Dialogue_Window,0,_dialogue_window_x, _dialogue_window_y); // draws the dialogue window

	draw_set_font(dialogue_font); //Font
	draw_set_color(font_color); //Color
	draw_set_halign(fa_left); //Alignment

	draw_text(_text_x, _text_y,message_draw); //draw the message

	if(!printing && (display_arrow||wait_for_input) && characters != 0){//If not printing the message, display continue arrow (character check to prevent intial arrow flash before it starts printing)
	    draw_sprite(spr_Menu_Arrow_Down,arrow_state,_arrow_x, _arrow_y);// "ArrowState" is the frame to be drawn. 0-1
	}

	draw_set_color(c_white); //reset draw color
}