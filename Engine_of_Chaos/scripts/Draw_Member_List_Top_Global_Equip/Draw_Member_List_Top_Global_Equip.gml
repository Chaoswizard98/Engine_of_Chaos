function Draw_Member_List_Top_Global_Equip() {
	var _member_list_top_x = Get_Anchor_X("Top_Left") + top_window_x + floor(top_window_pan_x);
	var _member_list_top_y = Get_Anchor_Y("Top_Left") + top_window_y - floor(top_window_pan_y);

	var _main_title_x = _member_list_top_x + 12;//Name Class Level (Jason SDMN Lv1)
	var _main_title_y = _member_list_top_y + 10;//Name Class Level (Jason SDMN Lv1)

	var _title_x = _main_title_x+8;//'- ITEMS -'
	var _title_y = _main_title_y+16;//'- ITEMS -'

	var _item_name_x = _main_title_x+8+104;//'Battered# Sword'
	var _item_name_y = _main_title_y+16;//'Battered# Sword'

	var _item_icon_x, _item_icon_y;
	_item_icon_x[0] = _title_x+24;//Where the icons go
	_item_icon_x[1] = _item_icon_x[0]-24;//Where the icons go
	_item_icon_x[2] = _item_icon_x[0]+24;//Where the icons go
	_item_icon_x[3] = _item_icon_x[0];//Where the icons go

	_item_icon_y[0] = _title_y+16;//Where the icons go
	_item_icon_y[1] = _item_icon_y[0]+16;//Where the icons go
	_item_icon_y[2] = _item_icon_y[0]+16;//Where the icons go
	_item_icon_y[3] = _item_icon_y[0]+32;//Where the icons go

	var _index_offset = 16;//spacing between inventory loop indexes

	var _status_icon_x = _member_list_top_x + 186;
	var _status_icon_y = _main_title_y;
	var _status_icon_spacing_x = -16;
	var _status_icon_spacing_y = 8;

	var _character = character_list[start_index + index];

	draw_sprite(spr_Member_List_Top,0,_member_list_top_x,_member_list_top_y);
	draw_set_color(font_color);

	draw_text(_main_title_x,_main_title_y,string_hash_to_newline(string(Get_Character_Name(lookup_type,_character,"Total")) +" "+ string(Get_Character_Class(lookup_type,_character,"Abbreviation")) +" "+Get_Menu_Display_Message("Generic","LV")+ string(Get_Character_Level(lookup_type,_character,"Derived"))));//draw title text
	draw_text(_title_x,_title_y,string_hash_to_newline("- "+Get_Menu_Display_Message("Generic","ITEMS")+" -"));//draw magic title

	Create_Status_Ailment_Array(lookup_type,character_list[start_index + index]);
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
	    //Draw Items
	    if(i = global.Number_Of_Inventory_Slots -1){
	        draw_sprite(spr_Remove_Icon,-1,_item_icon_x[i],_item_icon_y[i]);
	    }
	    else{
	        if(item_array[i]!= -1){//if we have an item in slot i
	            draw_sprite(Get_Inventory_Item_Stats(lookup_type,_character,item_array[i],"Item_Icon"),Get_Inventory_Item_Stats(lookup_type,_character,item_array[i],"Frame_Number"),_item_icon_x[i],_item_icon_y[i]);
	        }
	        else{
	            draw_sprite(Get_Item_Stats("null","Item_Icon"),Get_Item_Stats("null","Frame_Number"),_item_icon_x[i],_item_icon_y[i]);
	        }
	    }
	}

	//draw item flash thingy
	draw_sprite(spr_Icon_Flash,item_selector,_item_icon_x[item_index],_item_icon_y[item_index]);

	if(item_index = 3){
	    draw_set_color(equipped_font_color);
	    draw_text(_item_name_x,_item_name_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","Nothing")));//draw item name
	    draw_set_color(font_color);
    
	    draw_text(_item_name_x,_item_name_y +(1*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","ATT")+"  0"));//draw item name
	    draw_text(_item_name_x,_item_name_y +(2*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","DEF")+"  0"));//draw item name
	    draw_text(_item_name_x,_item_name_y +(3*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","AGI")+"  0"));//draw item name
	    draw_text(_item_name_x,_item_name_y +(4*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","MOV")+"  0"));//draw item name
	}
	else{
	draw_text(_item_name_x,_item_name_y,string_hash_to_newline(Get_Inventory_Item_Stats(lookup_type,_character,item_array[item_index],"Menu_Name")));//draw item name

	draw_text(_item_name_x,_item_name_y +(1*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","ATT")+"  "+string(Get_Inventory_Item_Stats(lookup_type,_character,item_array[item_index],"Attack"))));//draw item name
	draw_text(_item_name_x,_item_name_y +(2*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","DEF")+"  "+string(Get_Inventory_Item_Stats(lookup_type,_character,item_array[item_index],"Defense"))));//draw item name
	draw_text(_item_name_x,_item_name_y +(3*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","AGI")+"  "+string(Get_Inventory_Item_Stats(lookup_type,_character,item_array[item_index],"Agility"))));//draw item name
	draw_text(_item_name_x,_item_name_y +(4*_index_offset),string_hash_to_newline(Get_Menu_Display_Message("Generic","MOV")+"  "+string(Get_Inventory_Item_Stats(lookup_type,_character,item_array[item_index],"Movement_Range"))));//draw item name
	}

	draw_set_color(c_white);



}
