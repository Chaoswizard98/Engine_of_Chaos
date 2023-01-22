//===============
//Draw Locations=
//===============
var _window_x = Get_Anchor_X("Top_Left") + window_x + window_pan;
var _window_y = Get_Anchor_Y("Top_Left") + window_y;

var _text_x = _window_x + 22;
var _text_y = _window_y + 10;

var _config_text_x = _text_x + 148;
var _config_text_y = _text_y;

var _arrow_x = _text_x -10;
var _arrow_y = _text_y -1;

var _config_arrow_x = _config_text_x - 10;
var _config_arrow_y = _config_text_y - 1;

var _scroll_arrow_x = _text_x + 236;
var _scroll_arrow_y = _text_y + 1;

var _text_increment = 10;//offset between each line of text

//==========
//Draw Code=
//==========
draw_set_color(c_white); //Default to white draw color for sprites
draw_set_font(menu_font); //Font
draw_set_halign(fa_left); //Alignment

draw_sprite(spr_Control_Config_Window,0,_window_x, _window_y);//Draw the window
draw_sprite(spr_Menu_Arrow_Right,0,_arrow_x, _arrow_y + (arrow_position * _text_increment));//Draw the selection arrow

if(show_scroll_arrows && scroll_arrow_state = 0){
	if(start_index != 0){//if we are not showing the first option, show up arrow
	    draw_sprite(spr_Menu_Arrow_Up,0,_scroll_arrow_x, _scroll_arrow_y);//Draw the selection arrow
	}
	if(start_index + max_options_on_screen != number_of_menu_options){//if we are not showing the last option, show down arrow
	    draw_sprite(spr_Menu_Arrow_Down,0,_scroll_arrow_x, _scroll_arrow_y + ((max_options_on_screen -1) * _text_increment));//Draw the selection arrow
	}
}

for(i = start_index; i < (start_index + max_options_on_screen); i += 1){
	if(menu_locked[i]){
	    draw_set_color(locked_font_color);
	}
	else{
	    draw_set_color(font_color); //Color
	}
	draw_text(_text_x, _text_y + ((i - start_index) * _text_increment), menu_options[i]); //draw the message
	//draw_text(_config_text_x, _config_text_y + ((i - start_index) * _text_increment), settings_array[i]); //draw the message
}
draw_set_color(c_white); //reset draw color