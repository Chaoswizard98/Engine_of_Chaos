function Draw_Main_Battle_Cross_Menu() {
	//===============
	//Draw Locations=
	//===============
	//Bottom
	menu_x[3] = Get_Anchor_X("Bottom_Middle") - round(sprite_get_width(menu_sprite[3]) / 2) + floor(pan_x);
	menu_y[3] = Get_Anchor_Y("Bottom_Middle") - (round(sprite_get_height(menu_sprite[3])) + 8) + floor(pan_y);

	//Top
	menu_x[0] = menu_x[3];
	menu_y[0] = menu_y[3] - sprite_get_height(menu_sprite[0]);

	//Left
	menu_x[1] = menu_x[3] - sprite_get_width(menu_sprite[1]);
	menu_y[1] = menu_y[3] - (sprite_get_height(menu_sprite[1])/2);

	//Right
	menu_x[2] = menu_x[3] + sprite_get_width(menu_sprite[3]);
	menu_y[2] = menu_y[3] - (sprite_get_height(menu_sprite[2])/2);

	//Menu Name Window
	var _menu_name_x = menu_x[2] + sprite_get_width(menu_sprite[2]) + 8;
	var _menu_name_y = menu_y[3];

	var _text_x = _menu_name_x + 8;
	var _text_y = _menu_name_y + 8;

	//Check for using 'word of power' as mainhand weapon (in case we switch mid-turn)
	if(current_character != noone){
	    if(Get_Equipped_Item_Stats("Local",current_character,0,"Word_of_Power") != "none"){//if they have a word of power
	        menu_sprite[0] = spr_Cast_Menu_Icon;//slot 0 sprite
	        menu_name[0] = "CAST";//slot 0 name
	    }
	    else{
	        menu_sprite[0] = spr_Attack_Menu_Icon;//slot 0 sprite
	        menu_name[0] = "ATTACK";//slot 0 name
	    }
	}

	//==========
	//Draw Code=
	//==========
	draw_set_font(menu_font); 
	draw_set_color(c_white);

	var i;
	for(i = 0; i<number_of_menu_options; i+= 1){
	    draw_sprite(menu_sprite[i],menu_animated[i],menu_x[i],menu_y[i]);
	}

	draw_sprite(spr_Menu_Name_Window,0,_menu_name_x,_menu_name_y);

	draw_set_color(font_color);
	draw_text(_text_x,_text_y,string_hash_to_newline(menu_name[current_index]));
	draw_set_color(c_white); //reset draw color
}