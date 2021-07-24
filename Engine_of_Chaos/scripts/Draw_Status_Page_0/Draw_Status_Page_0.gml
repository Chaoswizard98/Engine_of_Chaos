function Draw_Status_Page_0() {
	var _page_window_x = Get_Anchor_X("Top_Left") + status_page_x + floor(page_window_pan);
	var _page_window_y = Get_Anchor_Y("Top_Left") + status_page_y;



	var _title_field_x = _page_window_x + 18;//Name Class
	var _title_field_y = _page_window_y + 12;//Name Class

	//======
	//Stats=
	//======
	//LV
	var _level_title_x = _title_field_x + 8;//title
	var _level_title_y = _title_field_y + 16;//title
	var _level_x = _level_title_x + 80;//value
	var _level_y = _level_title_y;//value

	//HP
	var _HP_title_x = _title_field_x + 8;//title
	var _HP_title_y = _title_field_y + 32;//title
	var _HP_x = _HP_title_x + 80;//value
	var _HP_y = _HP_title_y;//value

	//MP
	var _MP_title_x = _title_field_x + 8;//title
	var _MP_title_y = _title_field_y + 48;//title
	var _MP_x = _MP_title_x + 80;//value
	var _MP_y = _MP_title_y;//value

	//EX
	var _experience_title_x = _title_field_x + 8;//title
	var _experience_title_y = _title_field_y + 64;//title
	var _experience_x = _experience_title_x + 80;//value
	var _experience_y = _experience_title_y;//value

	//ATT
	var _attack_title_x = _level_x + 24;
	var _attack_title_y = _level_y;
	var _attack_x = _attack_title_x + 72;
	var _attack_y = _attack_title_y;

	//DEF
	var _defense_title_x = _HP_x + 24;
	var _defense_title_y = _HP_y;
	var _defense_x = _defense_title_x + 72;
	var _defense_y = _defense_title_y;

	//AGI
	var _agility_title_x = _MP_x + 24;
	var _agility_title_y = _MP_y;
	var _agility_x = _agility_title_x + 72;
	var _agility_y = _agility_title_y;

	//MOV
	var _move_title_x = _experience_x + 24;
	var _move_title_y = _experience_y;
	var _move_x = _move_title_x + 72;
	var _move_y = _move_title_y;

	//=========================
	//Spell / Item Inventories=
	//=========================
	var _magic_title_x = _title_field_x;//'MAGIC'
	var _magic_title_y = _title_field_y + 88;//'MAGIC'

	var _item_title_x = _magic_title_x + 104;//'ITEMS'
	var _item_title_y = _magic_title_y;//'ITEMS'

	var _spell_icon_x = _magic_title_x - 1;//Spell Icon
	var _spell_icon_y = _magic_title_y + 12;//Spell Icon

	var _spell_name_x = _magic_title_x + 16;//spell name
	var _spell_name_y = _spell_icon_y;//spell name

	var _spell_level_x = _spell_icon_x + 16;//spell level
	var _spell_level_y = _spell_icon_y + 17;//spell level

	var _no_magic_x = _spell_name_x -8;//no magic text
	var _no_magic_y = _spell_name_y +8;//no magic text

	var _item_icon_x = _item_title_x - 1;//item icon
	var _item_icon_y = _item_title_y + 12;//item icon

	var _item_name_x = _item_title_x + 16;//item name
	var _item_name_y = _item_icon_y;//item name

	var _item_equipped_text_x = _item_name_x;//item equipped text
	var _item_equipped_text_y = _item_name_y + 16;//item equipped text

	var _no_item_x = _item_name_x -8;//no item text
	var _no_item_y = _item_name_y +8;//no item text

	var _icon_spacing = 24;//spacing between each icon

	var _status_icon_x = _page_window_x + 186;
	var _status_icon_y = _title_field_y;
	var _status_icon_spacing_x = -16;
	var _status_icon_spacing_y = 8;


	draw_sprite(spr_Status_Page_Window,0,_page_window_x,_page_window_y);
	draw_text(_title_field_x,_title_field_y,string_hash_to_newline(string(Get_Character_Class(lookup_type,characterID,"Abbreviation")) + " " + string(Get_Character_Name(lookup_type,characterID,"Total"))));//CLASS, NAME

	Create_Status_Ailment_Array(lookup_type,characterID);
	for(i = 0; i < number_of_status_ailments; i+= 1){
	    if(i >= 4){//drop icons down 1 line (avoid clipping through name)
	        draw_sprite(status_ailment_array[i],0,_status_icon_x+(_status_icon_spacing_x*(i-4)),_status_icon_y+_status_icon_spacing_y);
	    }
	    else{//first line
	        draw_sprite(status_ailment_array[i],0,_status_icon_x+(_status_icon_spacing_x*i),_status_icon_y);
	    }
	}


	draw_set_halign(fa_left);//Draw Titles
	draw_text(_level_title_x,_level_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","LV")));//LV
	draw_text(_HP_title_x,_HP_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","HP")));//HP
	draw_text(_MP_title_x,_MP_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MP")));//MP
	draw_text(_experience_title_x,_experience_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","EX")));//EX

	draw_text(_attack_title_x,_attack_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","ATT")));//ATT
	draw_text(_defense_title_x,_defense_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","DEF")));//DEF
	draw_text(_agility_title_x,_agility_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","AGI")));//AGI
	draw_text(_move_title_x,_move_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MOV")));//MOV

	draw_set_halign(fa_right);//Draw Values
	draw_text(_level_x,_level_y,string_hash_to_newline(string(Get_Character_Level(lookup_type,characterID,"Derived"))));//LV
	draw_text(_HP_x,_HP_y,string_hash_to_newline(string(Get_Character_Health(lookup_type,characterID,"Base+Equipment")) +"/"+ string(Get_Character_Max_Health(lookup_type,characterID,"Base+Equipment"))));//HP
	draw_text(_MP_x,_MP_y,string_hash_to_newline(string(Get_Character_Magic(lookup_type,characterID,"Base+Equipment")) +"/"+ string(Get_Character_Max_Magic(lookup_type,characterID,"Base+Equipment"))));//MP
	draw_text(_experience_x,_experience_y,string_hash_to_newline(string(Get_Character_Experience(lookup_type,characterID,"Total"))));//EX

	draw_text(_attack_x,_attack_y,string_hash_to_newline(string(Get_Character_Attack(lookup_type,characterID,"Base+Equipment"))));//ATT
	draw_text(_defense_x,_defense_y,string_hash_to_newline(string(Get_Character_Defense(lookup_type,characterID,"Base+Equipment"))));//DEF
	draw_text(_agility_x,_agility_y,string_hash_to_newline(string(Get_Character_Agility(lookup_type,characterID,"Base+Equipment"))));//AGI
	draw_text(_move_x,_move_y,string_hash_to_newline(string(Get_Character_Movement_Range(lookup_type,characterID,"Base+Equipment"))));//MOV

	draw_set_halign(fa_left);//Reset alignment

	//Magic / items title
	draw_text(_magic_title_x,_magic_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","MAGIC")));//magic title
	draw_text(_item_title_x,_item_title_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","ITEMS")));//items title

	//Magic / Items 'nothing' test
	if(Get_Spell(lookup_type,characterID,0) = "none"){//if we dont have any magic
	    draw_set_color(equipped_font_color);
	    draw_text(_no_magic_x,_no_magic_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","Nothing")));//display 'nothing'
	    draw_set_color(font_color);
	}

	if(Inventory_Is_Empty(lookup_type,characterID)){//If we dont have any items
	    draw_set_color(equipped_font_color);
	    draw_text(_no_item_x,_no_item_y,string_hash_to_newline(Get_Menu_Display_Message("Generic","Nothing")));//display 'nothing'
	    draw_set_color(font_color);
	}

	//Magic / Items Loop
	var i = 0;
	for (i=0; i< global.Number_Of_Spell_Slots; i+= 1){
	    if(Get_Spell(lookup_type,characterID,i) != "none"){//Magic
	        draw_text(_spell_name_x,_spell_name_y+(i*_icon_spacing),string_hash_to_newline(Get_Spell_Slot_Stats(lookup_type,characterID,i,-1,"Menu_Name")));
	        draw_sprite(Get_Spell_Slot_Stats(lookup_type,characterID,i,-1,"Spell_Icon"),Get_Spell_Slot_Stats(lookup_type,characterID,i,-1,"Frame_Number"),_spell_icon_x,_spell_icon_y+(i*_icon_spacing));
        
	        for(j=0; j<Get_Spell_Level(lookup_type,characterID,i); j+=1){
	            draw_sprite(spr_Magic_Level,0,_spell_level_x+(j*sprite_get_width(spr_Magic_Level)),_spell_level_y+(i*_icon_spacing));
	        }
	    }
	}
	for (i=0; i< global.Number_Of_Inventory_Slots; i+= 1){
	    if(Get_Item(lookup_type,characterID,i) != "none"){//Items
	        draw_text(_item_name_x,_item_name_y+(i*_icon_spacing),string_hash_to_newline(Get_Inventory_Item_Stats(lookup_type,characterID,i,"Menu_Name")));
	        draw_sprite(Get_Inventory_Item_Stats(lookup_type,characterID,i,"Item_Icon"),Get_Inventory_Item_Stats(lookup_type,characterID,i,"Frame_Number"),_item_icon_x,_item_icon_y+(i*_icon_spacing));
	        if(Has_Item_Slot_Equipped(lookup_type,characterID,i)){
	            draw_set_color(equipped_font_color);
	            draw_text(_item_equipped_text_x,_item_equipped_text_y+(i*_icon_spacing),string_hash_to_newline(Get_Menu_Display_Message("Generic","Equipped")));
	            draw_set_color(font_color);
	        }
	    }
	}
	draw_set_color(c_white); //reset draw color



}
