function Draw_Member_List_Top_Window_Global_Normal() {
	var _member_list_top_x = Get_Anchor_X("Top_Left") + top_window_x + floor(top_window_pan_x);
	var _member_list_top_y = Get_Anchor_Y("Top_Left") + top_window_y - floor(top_window_pan_y);

	var _main_title_x = _member_list_top_x + 12;//Name Class Level (Jason SDMN Lv1)
	var _main_title_y = _member_list_top_y + 10;//Name Class Level (Jason SDMN Lv1)

	var _magic_title_x = _main_title_x;//'MAGIC'
	var _magic_title_y = _main_title_y+16;//'MAGIC'

	var _magic_name_x = _magic_title_x+8;//'Blaze'
	var _magic_name_y = _magic_title_y+8;//'Blaze'

	var _magic_level_x = _magic_name_x+8;//Level 1
	var _magic_level_y = _magic_name_y+8;//Level 1

	var _item_title_x = _main_title_x+104;//'ITEM'
	var _item_title_y = _main_title_y+16;//'ITEM'

	var _item_name_x = _item_title_x+8;//'Battered# Sword'
	var _item_name_y = _item_title_y+8;//'Battered# Sword'

	var _index_offset = 16;//spacing between inventory loop indexes

	var _equipped_icon_x = _item_name_x - 8;
	var _equipped_icon_y = _item_name_y;

	var _status_icon_x = _member_list_top_x + 186;
	var _status_icon_y = _main_title_y;
	var _status_icon_spacing_x = -16;
	var _status_icon_spacing_y = 8;


	var _character = character_list[start_index + index];

	draw_sprite(spr_Member_List_Top,0,_member_list_top_x,_member_list_top_y);

	draw_set_color(font_color);

	draw_text(_main_title_x,_main_title_y,string_hash_to_newline(Get_Character_Name(lookup_type,_character,"Total") +" "+ Get_Character_Class(lookup_type,_character,"Abbreviation") +" "+Get_Menu_Display_Message("Generic","LV")+ string(Get_Character_Level(lookup_type,_character,"Derived"))));//draw title text
	draw_text(_magic_title_x,_magic_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MAGIC")));//draw magic title
	draw_text(_item_title_x,_item_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","ITEM")));//draw item title


	Create_Status_Ailment_Array(lookup_type,_character);
	for(i = 0; i < number_of_status_ailments; i+= 1){
	    if(i >= 3){//drop icons down 1 line (avoid clipping through name)
	        draw_sprite(status_ailment_array[i],0,_status_icon_x+(_status_icon_spacing_x*(i-3)),_status_icon_y+_status_icon_spacing_y);
	    }
	    else{//first line
	        draw_sprite(status_ailment_array[i],0,_status_icon_x+(_status_icon_spacing_x*i),_status_icon_y);
	    }
	}


	var i = 0;
	for (i = 0; i<4; i+= 1){//loop through item / magic inventory
	    //Draw Magic
	    if(Get_Spell_Level(lookup_type,_character,i) != 0){//if we have a spell in slot i
	        draw_text(_magic_name_x ,_magic_name_y+(i*_index_offset),string_hash_to_newline(Get_Spell(lookup_type,_character,i)));//draw spell name
	        draw_text(_magic_level_x,_magic_level_y+(i*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","Level")+" "+string(Get_Spell_Level(lookup_type,_character,i))));//draw spell level
	    }
	    //Draw Items
	    if(Get_Item(lookup_type,_character,i)!= "none"){//if we have an item in slot i
	        draw_text(_item_name_x,_item_name_y+(i*_index_offset),string_hash_to_newline(Get_Inventory_Item_Stats(lookup_type,_character,i,"Menu_Name")));//draw item name
	        if(Has_Item_Slot_Equipped(lookup_type,_character,i)){
	            draw_sprite(spr_Equipped_Icon,0,_equipped_icon_x,_equipped_icon_y+(i*_index_offset));
	        }
	    }
	}

	draw_set_color(equipped_font_color);

	if(Get_Spell_Level(lookup_type,_character,0) = 0){//if we have no spells
	    draw_text(_magic_name_x,_magic_name_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","Nothing")));//draw spell name
	}
	if(Get_Item(lookup_type,_character,0)= "none"){//if we dont have an item in slot i
	    draw_text(_item_name_x,_item_name_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","Nothing")));//draw item name
	}

	draw_set_color(c_white);





}
