function Draw_Cross_Menu_Item_Icons() {
	//===============
	//Draw Locations=
	//===============
	//menu_sprite[0] = Get_Spell_Slot_Stats('Local',current_character,inventory_slot[0],Get_Spell_Level('Local',current_character,inventory_slot[0]),'menu_icon');

	//Bottom
	menu_x[3] = Get_Anchor_X("Bottom_Middle") - round(sprite_get_width(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[3],"Item_Icon")) / 2) + floor(pan_x);
	menu_y[3] = Get_Anchor_Y("Bottom_Middle") - (round(sprite_get_height(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[3],"Item_Icon"))) + 8) + floor(pan_y);

	//Top
	menu_x[0] = menu_x[3];
	menu_y[0] = menu_y[3] - sprite_get_height(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[0],"Item_Icon"));

	//Left
	menu_x[1] = menu_x[3] - sprite_get_width(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[1],"Item_Icon"));
	menu_y[1] = menu_y[3] - (sprite_get_height(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[1],"Item_Icon"))/2);

	//Right
	menu_x[2] = menu_x[3] + sprite_get_width(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[3],"Item_Icon"));
	menu_y[2] = menu_y[3] - (sprite_get_height(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[2],"Item_Icon"))/2);

	//Menu Name Window
	var _menu_name_x = menu_x[2] + sprite_get_width(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[2],"Item_Icon")) + 8;
	var _menu_name_y = Get_Anchor_Y("Bottom_Middle") - sprite_get_height(spr_Item_Name_Window) - 8  + floor(pan_y);

	var _text_x = _menu_name_x + 8;
	var _text_y = _menu_name_y + 8;


	var _text2_x = _text_x;
	var _text2_y = _text_y + 16;

	var _text2 = "EQUIPPED";

	//==========
	//Draw Code=
	//==========
	draw_set_font(menu_font); 
	draw_set_color(c_white);

	var i;
	for(i = 0; i<number_of_menu_options; i+= 1){
	    draw_sprite(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[i],"Item_Icon"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[i],"Frame_Number"),menu_x[i],menu_y[i]);
	}

	if(state = "Selecting_Spell_Level"){
	    draw_sprite(spr_Icon_Flash,0,menu_x[current_index],menu_y[current_index]);
	}
	else{
	    draw_sprite(spr_Icon_Flash,-1,menu_x[current_index],menu_y[current_index]);
	}
	draw_sprite(spr_Item_Name_Window,0,_menu_name_x,_menu_name_y);

	draw_set_color(font_color);
	draw_text(_text_x,_text_y,string_hash_to_newline(Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Menu_Name")));//menu name

	if(Has_Item_Slot_Equipped("Local",current_character,inventory_slot[current_index])){
	    draw_set_color(c_orange);
	    draw_text(_text2_x,_text2_y,string_hash_to_newline(_text2));
	}
	draw_set_color(c_white); //reset draw color
}