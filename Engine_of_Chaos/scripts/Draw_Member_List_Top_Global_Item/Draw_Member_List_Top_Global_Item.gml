function Draw_Member_List_Top_Global_Item() {
	var _member_list_top_x = Get_Anchor_X("Top_Left") + top_window_x + floor(top_window_pan_x);
	var _member_list_top_y = Get_Anchor_Y("Top_Left") + top_window_y - floor(top_window_pan_y);

	var _main_title_x = _member_list_top_x + 12;//Name Class Level (Jason SDMN Lv1)
	var _main_title_y = _member_list_top_y + 10;//Name Class Level (Jason SDMN Lv1)

	var _title_x = _main_title_x+8;//'- ITEMS -'
	var _title_y = _main_title_y+16;//'- ITEMS -'

	var _item_name_x = _main_title_x+8+104;//'Battered# Sword'
	var _item_name_y = _main_title_y+8+16;//'Battered# Sword'

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

	var _equipped_icon_x = _item_name_x - 8;
	var _equipped_icon_y = _item_name_y;

	var _status_icon_x = _member_list_top_x + 186;
	var _status_icon_y = _main_title_y;
	var _status_icon_spacing_x = -16;
	var _status_icon_spacing_y = 8;

	draw_sprite(spr_Member_List_Top,0,_member_list_top_x,_member_list_top_y);
	draw_set_color(font_color);

	var _character = character_list[start_index + index];


	draw_text(_main_title_x,_main_title_y,Get_Character_Name(lookup_type,_character,"Total") +" "+ Get_Character_Class(lookup_type,_character,"Abbreviation") +" "+Get_Menu_Display_Message("Generic","LV")+ string(Get_Character_Level(lookup_type,_character,"Derived")));//draw title text
	draw_text(_title_x,_title_y,"- "+Get_Menu_Display_Message("Generic","ITEMS")+" -");//draw magic title

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
	    if(Get_Item(lookup_type, _character,i)!= "none"){//if we have an item in slot i
	        draw_text(_item_name_x,_item_name_y+(i*_index_offset),Get_Inventory_Item_Stats(lookup_type,_character,i,"Menu_Name"));//draw item name
	        draw_sprite(Get_Inventory_Item_Stats(lookup_type,_character,i,"Item_Icon"),Get_Inventory_Item_Stats(lookup_type,_character,i,"Frame_Number"),_item_icon_x[i],_item_icon_y[i]);
	        if(Has_Item_Slot_Equipped(lookup_type,_character,i)){
	            draw_sprite(spr_Equipped_Icon,0,_equipped_icon_x,_equipped_icon_y+(i*_index_offset));
	        }
	    }
	    else{
	        draw_sprite(Get_Item_Stats("null","Item_Icon"),Get_Item_Stats("null","Frame_Number"),_item_icon_x[i],_item_icon_y[i]);
	    }
	}

	//draw item flash thingy
	draw_sprite(spr_Icon_Flash,item_selector,_item_icon_x[item_index],_item_icon_y[item_index]);
	draw_sprite(spr_Item_Selector,item_selector,_item_name_x -1,_item_name_y  -1+(item_index*_index_offset));

	draw_set_color(equipped_font_color);

	if(Get_Item(lookup_type, _character,0)= "none"){//if we dont have an item in slot i
	    draw_text(_item_name_x,_item_name_y,Get_Menu_Display_Message("Generic","Nothing"));//draw item name
	}

	draw_set_color(c_white);
}