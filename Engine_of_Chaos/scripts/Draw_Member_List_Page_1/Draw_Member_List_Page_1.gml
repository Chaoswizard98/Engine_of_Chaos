function Draw_Member_List_Page_1() {
	//=================
	//Draw Coordinates=
	//=================
	//window
	var _member_list_bottom_x = Get_Anchor_X("Top_Left") + bottom_window_x;
	var _member_list_bottom_y = Get_Anchor_Y("Top_Left") + bottom_window_y + floor(bottom_window_pan);

	//Titles
	var _name_title_x = _member_list_bottom_x + 18;//NAME
	var _name_title_y = _member_list_bottom_y + 10;//NAME

	var _health_title_x = _member_list_bottom_x + 85+8;//HP
	var _health_title_y = _member_list_bottom_y + 10;//HP

	var _magic_title_x = _member_list_bottom_x + 117+8;//MP
	var _magic_title_y = _member_list_bottom_y + 10;//MP

	var _attack_title_x = _member_list_bottom_x + 149;//ATT
	var _attack_title_y = _member_list_bottom_y + 10;//ATT

	var _defense_title_x = _member_list_bottom_x + 181;//DEF
	var _defense_title_y = _member_list_bottom_y + 10;//DEF

	var _agility_title_x = _member_list_bottom_x + 213;//AGI
	var _agility_title_y = _member_list_bottom_y + 10;//AGI

	var _move_title_x = _member_list_bottom_x + 245;//MOV
	var _move_title_y = _member_list_bottom_y + 10;//MOV

	//Character Fields
	var _name_field_x = _name_title_x;//offset from name title
	var _name_field_y = _name_title_y + 24;//offset from name title

	var _health_field_x = _health_title_x + 24-8;//offset from health title
	var _health_field_y = _health_title_y + 24;//offset from health title

	var _magic_field_x = _magic_title_x + 24-8;//offset from magic title
	var _magic_field_y = _magic_title_y + 24;//offset from magic title

	var _attack_field_x = _attack_title_x + 24;//offset from attack title
	var _attack_field_y = _attack_title_y + 24;//offset from attack title

	var _defense_field_x = _defense_title_x + 24;//offset from defense title
	var _defense_field_y = _defense_title_y + 24;//offset from defense title

	var _agility_field_x = _agility_title_x + 24;//offset from agility title
	var _agility_field_y = _agility_title_y + 24;//offset from agility title

	var _move_field_x = _move_title_x + 24;//offset from move title
	var _move_field_y = _move_title_y + 24;//offset from move title

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

	//Draw titles
	draw_text(_name_title_x,_name_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","NAME")));//NAME
	draw_text(_health_title_x,_health_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","HP")));//HP
	draw_text(_magic_title_x,_magic_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MP")));//MP
	draw_text(_attack_title_x,_attack_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","ATT")));//ATT
	draw_text(_defense_title_x,_defense_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","DEF")));//DEF
	draw_text(_agility_title_x,_agility_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","AGI")));//AGI
	draw_text(_move_title_x,_move_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MOV")));//MOV

	//Character Loop
	var i = start_index;
	for (i = start_index; i < min((start_index + max_characters_displayed),number_of_characters); i+= 1){
	    draw_text(_name_field_x,_name_field_y + y_scroll + bottom_window_pan + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Name(lookup_type,character_list[i],"Total"))));//Character's name
    
	    if(lookup_type = "Global"){
	        if(global.In_Battle_Party[character_list[i]]){
	            draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	        }
	    }
	    else {
	        draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	    }
    
	    draw_set_halign(fa_right);
	    draw_text(_health_field_x,_health_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Health(lookup_type,character_list[i],"Base+Equipment"))));//Character's Health
	    draw_text(_magic_field_x,_magic_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Magic(lookup_type,character_list[i],"Base+Equipment"))));//Character's Magic
	    draw_text(_attack_field_x,_attack_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Attack(lookup_type,character_list[i],"Base+Equipment"))));//Character's Attack
	    draw_text(_defense_field_x,_defense_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Defense(lookup_type,character_list[i],"Base+Equipment"))));//Character's Defense
	    draw_text(_agility_field_x,_agility_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Agility(lookup_type,character_list[i],"Base+Equipment"))));//Character's Agility
	    draw_text(_move_field_x,_move_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string_hash_to_newline(string(Get_Character_Movement_Range(lookup_type,character_list[i],"Base+Equipment"))));//Character's Move Range
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
