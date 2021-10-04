function Draw_Cross_Menu_Equip_Window() {
	//===============
	//Draw Locations=
	//===============
	var _window_x = Get_Anchor_X("Bottom_Left") + 8 + floor(equip_pan_x);
	var _window_y = Get_Anchor_Y("Bottom_Left") - sprite_get_height(spr_Equip_Window) - 8;

	//Menu Name Window
	var _text_x = _window_x + 8;
	var _text_y = _window_y + 8;

	var _text2_x = _text_x;
	var _text2_y = _text_y + 16;

	var _text3_x = _text2_x;
	var _text3_y = _text2_y + 16;

	var _text4_x = _text3_x;
	var _text4_y = _text3_y + 16;

	var _stat_text_x = _text_x+64;
	var _stat_text_y = _text_y;

	var _stat_text2_x = _text2_x+64;
	var _stat_text2_y = _text2_y;

	var _stat_text3_x = _text3_x+64;
	var _stat_text3_y = _text3_y;

	var _stat_text4_x = _text4_x+64;
	var _stat_text4_y = _text4_y;

	//==========
	//Draw Code=
	//==========
	draw_set_color(c_white);
	draw_sprite(spr_Equip_Window,0,_window_x,_window_y);

	draw_set_font(menu_font);
	draw_set_color(font_color);

	draw_text(_text_x,_text_y,string_hash_to_newline("ATT"));
	draw_text(_text2_x,_text2_y,string_hash_to_newline("DEF"));
	draw_text(_text3_x,_text3_y,string_hash_to_newline("AGI"));
	draw_text(_text4_x,_text4_y,string_hash_to_newline("MOV"));

	draw_set_halign(fa_right);

	draw_text(_stat_text_x,_stat_text_y,string_hash_to_newline(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Attack")));
	draw_text(_stat_text2_x,_stat_text2_y,string_hash_to_newline(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Defense")));
	draw_text(_stat_text3_x,_stat_text3_y,string_hash_to_newline(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Agility")));
	draw_text(_stat_text4_x,_stat_text4_y,string_hash_to_newline(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Movement_Range")));

	draw_set_halign(fa_left);
	draw_set_color(c_white); //reset draw color
}