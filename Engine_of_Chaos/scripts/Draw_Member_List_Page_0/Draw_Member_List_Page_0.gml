function Draw_Member_List_Page_0() {
	//=================
	//Draw Coordinates=
	//=================
	//window
	var _member_list_bottom_x = Get_Anchor_X("Top_Left") + bottom_window_x;
	var _member_list_bottom_y = Get_Anchor_Y("Top_Left") + bottom_window_y + floor(bottom_window_pan);

	//title field
	var _name_title_x = _member_list_bottom_x + 18;//NAME
	var _name_title_y = _member_list_bottom_y + 10;//NAME

	var _class_title_x = _member_list_bottom_x + 85;//CLASS
	var _class_title_y = _member_list_bottom_y + 10;//CLASS

	var _level_title_x = _member_list_bottom_x + 213;//LEV
	var _level_title_y = _member_list_bottom_y + 10;//LEV

	var _exp_title_x = _member_list_bottom_x + 245;//EXP
	var _exp_title_y = _member_list_bottom_y + 10;//EXP

	//character fields
	var _name_field_x = _name_title_x;//offset from name title
	var _name_field_y = _name_title_y + 24;//offset from name title

	var _class_field_x = _class_title_x;//offset from class title
	var _class_field_y = _class_title_y + 24;//offset from class title

	var _level_field_x = _level_title_x + 24;//offset from level title
	var _level_field_y = _level_title_y + 24;//offset from level title

	var _exp_field_x = _exp_title_x + 24;//offset from exp title
	var _exp_field_y = _exp_title_y + 24;//offset from exp title

	//selector (Probably want to keep this (and name field) the same between pages)
	var _character_selector_x = _name_field_x - 4;//flashing red box
	var _character_selector_y = _name_field_y - 5;//flashing red box

	var _battle_party_icon_x = _name_field_x - 9;//sword icon for 'in battle party'
	var _battle_party_icon_y = _name_field_y;//sword icon for 'in battle party'

	var _scroll_arrow_up_x = _battle_party_icon_x;
	var _scroll_arrow_up_y = _battle_party_icon_y - 8;

	var _scroll_arrow_down_x = _battle_party_icon_x;
	var _scroll_arrow_down_y = (_battle_party_icon_y + (character_index_offset_y * (max_characters_displayed))) - 6;

	//==========
	//Draw Code=
	//==========
	draw_sprite(spr_Member_List_Bottom,0,_member_list_bottom_x,_member_list_bottom_y);

	//draw titles
	draw_text(_name_title_x,_name_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","NAME")));//NAME
	draw_text(_class_title_x,_class_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","CLASS")));//CLASS
	draw_text(_level_title_x,_level_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","LEV")));//LEVEL
	draw_text(_exp_title_x,_exp_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","EXP")));//EXP

	//Character Loop
	var i = start_index;
	for (i = start_index; i < min((start_index + max_characters_displayed),number_of_characters); i+= 1){
	    draw_text(_name_field_x,_name_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Name(lookup_type,character_list[i],"Total"))));
	    draw_text(_class_field_x,_class_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Class(lookup_type,character_list[i],"Abbreviation"))));
    
	    if(lookup_type = "Global"){
	        if(global.In_Battle_Party[character_list[i]]){
	            draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	        }
	    }
	    else {
	        draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	    }
    
	    draw_set_halign(fa_right);
	    draw_text(_level_field_x,_level_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Level(lookup_type,character_list[i],"Derived"))));
	    draw_text(_exp_field_x,_exp_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Experience(lookup_type,character_list[i],"Total"))));
	    draw_set_halign(fa_left);
	}

	//draw selector
	draw_sprite(spr_Force_Member_Selector,character_selector_state,_character_selector_x,_character_selector_y + (character_index_offset_y * index));

	//Draw_Arrows
	if(start_index != 0){
	    draw_sprite(spr_Menu_Arrow_Up,character_selector_state,_scroll_arrow_up_x,_scroll_arrow_up_y);
	}
	if((start_index + max_characters_displayed) < number_of_characters){
	    draw_sprite(spr_Menu_Arrow_Down,character_selector_state,_scroll_arrow_down_x,_scroll_arrow_down_y);
	}
}