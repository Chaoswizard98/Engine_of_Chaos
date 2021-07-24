function Create_Main_Battle_Menu_Talk() {
	var _new_menu;
	_new_menu = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cross_Menu);

	with(_new_menu){
	    current_object = argument[0];
	    current_character = argument[1];
	    current_npc = argument[2];
	    cancel_event = "Main_Battle_Menu";
    
	    pan_y = max_y_pan;
	    pan_direction = "up";
	    number_of_menu_options = 4;//Number of menu options
	    play_pan_sound = true;
    
	    menu_sprite[0] = spr_Attack_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Menu_Display_Message("Generic","ATTACK");//slot 0 name
	    menu_event[0] = "Attack";//event for clicking slot 0
	    menu_animated[0] = 0;
    
	    menu_sprite[1] = spr_Magic_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Menu_Display_Message("Generic","MAGIC");//slot 1 name
	    menu_event[1] = "Display_Spells_Battle";//event for clicking slot 1
	    menu_animated[1] = 0;
    
	    menu_sprite[2] = spr_Item_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Menu_Display_Message("Generic","ITEM");//slot 2 name
	    menu_event[2] = "Display_Item_Menu_Battle";//event for clicking slot 2
	    menu_animated[2] = 0;
    
	    menu_sprite[3] = spr_Talk_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Menu_Display_Message("Generic","TALK");//slot 3 name
	    menu_event[3] = "Search_In_Battle";//event for clicking slot 3
	    menu_animated[3] = -1;
    
	    current_index = 3;
	}



}
