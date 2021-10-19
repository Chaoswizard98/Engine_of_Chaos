function Draw_Member_List_Equipment_Shop_Page_0() {
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

	var _level_title_x = _member_list_bottom_x + 213 - 16;//LEV
	var _level_title_y = _member_list_bottom_y + 10;//LEV

	var _exp_title_x = _member_list_bottom_x + 245;//EXP
	var _exp_title_y = _member_list_bottom_y + 10;//EXP

	//character fields
	var _name_field_x = _name_title_x;//offset from name title
	var _name_field_y = _name_title_y + 24;//offset from name title

	var _class_field_x = _class_title_x + 32;//offset from class title
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

	//==========
	//Draw Code=
	//==========
	draw_sprite(spr_Member_List_Bottom,0,_member_list_bottom_x,_member_list_bottom_y);

	//draw titles
	draw_text(_name_title_x,_name_title_y,Get_Menu_Display_Message("Generic","NAME"));//NAME
	draw_text(_class_title_x,_class_title_y,Get_Menu_Display_Message("Generic","ATTACK"));//CLASS
	draw_text(_level_title_x,_level_title_y,Get_Menu_Display_Message("Generic","DEFENSE"));//LEVEL

	//Character Loop
	var i = start_index;
	var j = 0;
	for (i = start_index; i < min((start_index + max_characters_displayed),number_of_characters); i+= 1){
	    draw_text(_name_field_x,_name_field_y + y_scroll + (character_index_offset_y * (i - start_index)),string(Get_Character_Name(lookup_type,character_list[i],"Total")));
	    if(lookup_type = "Global"){
	        if(global.In_Battle_Party[character_list[i]]){
	            draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	        }
	    }
	    else{
	        draw_sprite(spr_Battle_Party_Icon,0,_battle_party_icon_x,_battle_party_icon_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	    }
    
	    j = 0;
	    while(j<global.Number_Of_Equipment_Slots){//loop through equipment, stop on first slot the item can be equipped to
	        if(Get_Item_Stats(obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],Get_Equipment_Slot_Name(j),lookup_type,character_list[i])){//if character can equip item to this slot
	            draw_text(_class_field_x,_class_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),Get_Equipped_Item_Stats(lookup_type,character_list[i],j,"Attack"));
	            draw_sprite(spr_Equip_Arrow,0,_class_field_x + 8,_class_field_y+ y_scroll + (character_index_offset_y * (i - start_index)));
	            draw_text(_class_field_x+16,_class_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),string(Get_Item_Stats(obj_Shop_Controller.item_array[(obj_Shop_Controller.page_number*obj_Shop_Controller.items_per_page)+obj_Shop_Controller.item_index],"Attack",lookup_type,character_list[i])));
	            break;
	        }
	        j += 1;
	    }
	    if(j >= global.Number_Of_Equipment_Slots){//if we cant equip this item, 
	        draw_text(_class_field_x,_class_field_y+ y_scroll + (character_index_offset_y * (i - start_index)),Get_Menu_Display_Message("Generic","unequippable"));
	    }
	}

	//draw selector
	draw_sprite(spr_Force_Member_Selector,character_selector_state,_character_selector_x,_character_selector_y + (character_index_offset_y * index));
}