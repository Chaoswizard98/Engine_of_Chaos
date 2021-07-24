function Draw_Name_Character_Menu() {
	//===============
	//Draw Locations=
	//===============
	var _window_x = Get_Anchor_X("Top_Left") + 8;
	var _window_y = Get_Anchor_Y("Top_Left") + 86 - window_pan;

	var _text_x = _window_x + 12;
	var _text_y = _window_y + 12;

	var _selector_x = _text_x - 3;
	var _selector_y = _text_y - 3;

	var _name_window_x = _window_x + 62 - window_pan;
	var _name_window_y = _window_y + -26 + window_pan + window_pan;

	var _name_text_x = _name_window_x + 10;
	var _name_text_y = _name_window_y + 8;

	var _text_increment = 8;//offset between each letter
	var _line_increment = 13;//offset between each line of text

	//==========
	//Draw Code=
	//==========
	draw_sprite(spr_Name_Character_Window,0,_window_x,_window_y);//Draws Dialogue window to hold letters ect
	draw_sprite(spr_Character_Name_Window,0,_name_window_x,_name_window_y);//Draws Dialogue window to hold letters ect

	draw_set_font(menu_font);//Set Font
	draw_set_color(font_color);//Set Font Color

	for(j=0; j<3; j+=1){
	    for(i=0; i<26; i+= 1){
	        if(string_char_at(characters[j,i],0) != "^"){
	            draw_text(_text_x + (_text_increment*i),_text_y+(_line_increment*j),string_hash_to_newline(characters[j,i]));//Draw all characters
	        }
	    }
	}

	if(string_length(characters[selector_position_y,selector_position_x]) = 3){
	    draw_sprite(spr_Character_Name_Selector_2,cursor_flash_state,_selector_x+(selector_position_x*_text_increment),_selector_y+(selector_position_y*_line_increment));
	}
	else{
	    draw_sprite(spr_Character_Name_Selector,cursor_flash_state,_selector_x+(selector_position_x*_text_increment),_selector_y+(selector_position_y*_line_increment));
	}

	for(i=0; i<max_letters; i+=1){
	    if(name[i] != ""){
	        draw_text(_name_text_x+(_text_increment*i),_name_text_y,string_hash_to_newline(name[i]));//Draws Dialogue window to hold letters ect
	    }
	    else{
	        draw_sprite(spr_Character_Name,0,_name_text_x+(_text_increment*i),_name_text_y);//Draws Dialogue window to hold letters ect
	    }
	}
	if(current_character!= max_letters){
	    draw_sprite(spr_Character_Name_Flash,cursor_flash_state,_name_text_x+(_text_increment*current_character),_name_text_y);//Draws Dialogue window to hold letters ect
	}
	draw_set_color(c_white); //reset draw color



}
