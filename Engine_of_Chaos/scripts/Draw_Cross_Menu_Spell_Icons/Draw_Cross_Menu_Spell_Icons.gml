function Draw_Cross_Menu_Spell_Icons() {
	//===============
	//Draw Locations=
	//===============
	//Bottom
	menu_x[3] = Get_Anchor_X("Bottom_Middle") - round(sprite_get_width(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[3],Get_Spell_Level("Local",current_character,inventory_slot[3]),"Spell_Icon")) / 2) + floor(pan_x);
	menu_y[3] = Get_Anchor_Y("Bottom_Middle") - (round(sprite_get_height(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[3],Get_Spell_Level("Local",current_character,inventory_slot[3]),"Spell_Icon"))) + 8) + floor(pan_y);

	//Top
	menu_x[0] = menu_x[3];
	menu_y[0] = menu_y[3] - sprite_get_height(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[0],Get_Spell_Level("Local",current_character,inventory_slot[0]),"Spell_Icon"));

	//Left
	menu_x[1] = menu_x[3] - sprite_get_width(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[1],Get_Spell_Level("Local",current_character,inventory_slot[1]),"Spell_Icon"));
	menu_y[1] = menu_y[3] - (sprite_get_height(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[1],Get_Spell_Level("Local",current_character,inventory_slot[1]),"Spell_Icon"))/2);

	//Right
	menu_x[2] = menu_x[3] + sprite_get_width(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[3],Get_Spell_Level("Local",current_character,inventory_slot[3]),"Spell_Icon"));
	menu_y[2] = menu_y[3] - (sprite_get_height(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[2],Get_Spell_Level("Local",current_character,inventory_slot[2]),"Spell_Icon"))/2);

	//Menu Name Window
	var _menu_name_x = menu_x[2] + sprite_get_width(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[2],Get_Spell_Level("Local",current_character,inventory_slot[2]),"Spell_Icon")) + 8;
	var _menu_name_y = Get_Anchor_Y("Bottom_Middle") - sprite_get_height(spr_Item_Name_Window) - 8  + floor(pan_y);

	var _text_x = _menu_name_x + 8;
	var _text_y = _menu_name_y + 8;

	var _spell_level_x = _text_x;
	var _spell_level_y = _text_y + 8 +1;

	var _text2_x = _text_x;
	var _text2_y = _text_y + 16;

	var _text2 = "MP";
	var _text3_x = _text2_x + sprite_get_width(spr_Item_Name_Window)-19;
	var _text3_y = _text2_y;
	var _text3 = string(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],spell_level,"Magic_Cost"));

	//==========
	//Draw Code=
	//==========
	draw_set_font(menu_font); 
	draw_set_color(c_white);

	var i;
	for(i = 0; i<number_of_menu_options; i+= 1){
		if(Get_Spell_Level("Local",current_character,inventory_slot[i])!=0){
			draw_sprite(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[i],Get_Spell_Level("Local",current_character,inventory_slot[i]),"Spell_Icon"),Get_Spell_Slot_Stats("Local",current_character,inventory_slot[i],Get_Spell_Level("Local",current_character,inventory_slot[i]),"Frame_Number"),menu_x[i],menu_y[i]);
		}
		else{ 
			draw_sprite(Get_Effect_Stats("none",0,"Spell_Icon"),Get_Effect_Stats("none",0,"Frame_Number"),menu_x[i],menu_y[i]);
		}
	}

	if(state = "Selecting_Spell_Level"){
	    draw_sprite(spr_Icon_Flash,0,menu_x[current_index],menu_y[current_index]);
	}
	else{
	    draw_sprite(spr_Icon_Flash,-1,menu_x[current_index],menu_y[current_index]);
	}
	draw_sprite(spr_Item_Name_Window,0,_menu_name_x,_menu_name_y);

	draw_set_color(font_color);
	draw_text(_text_x,_text_y,string_hash_to_newline(Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],Get_Spell_Level("Local",current_character,inventory_slot[current_index]),"Menu_Name")));//menu name
	var i = 0;
	for(i=0; i<Get_Spell_Level("Local",current_character,inventory_slot[current_index]); i+=1){
	    if(spell_level > i){
	        draw_sprite(spr_Magic_Level,0,_spell_level_x+(i*sprite_get_width(spr_Magic_Level)),_spell_level_y);
	    }
	    else {
	        draw_sprite(spr_Magic_Level,1,_spell_level_x+(i*sprite_get_width(spr_Magic_Level)),_spell_level_y);
	    }
	}
	draw_text(_text2_x,_text2_y,string_hash_to_newline(_text2));//mp cost
	draw_set_halign(fa_right);
	draw_text(_text3_x,_text3_y,string_hash_to_newline(_text3));
	draw_set_halign(fa_left);
	if(state = "Selecting_Spell_Level"){
	    draw_sprite(spr_Force_Member_Selector,-1,_spell_level_x,_spell_level_y-6);
	}
	draw_set_color(c_white); //reset draw color
}