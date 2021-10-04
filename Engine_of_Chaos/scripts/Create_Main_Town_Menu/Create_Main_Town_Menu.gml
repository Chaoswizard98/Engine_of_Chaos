function Create_Main_Town_Menu(_object,_character,_npc) {
	var _new_menu = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cross_Menu);

	with(_new_menu){
	    current_object = _object;
	    current_character = _character;
	    current_npc = _npc;
    
	    pan_y = max_y_pan;
	    pan_direction = "up";
	    number_of_menu_options = 4;//Number of menu options
	    play_pan_sound = true;
    
	    menu_sprite[0] = spr_Status_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Menu_Display_Message("Generic","MEMBER");//slot 0 name
	    menu_event[0] = "Display_Member_List_Status";//event for clicking slot 0
	    menu_animated[0] = -1;
    
	    menu_sprite[1] = spr_Magic_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Menu_Display_Message("Generic","MAGIC");//slot 1 name
	    menu_event[1] = "Display_Member_List_Magic";//event for clicking slot 1
	    menu_animated[1] = 0;
    
	    menu_sprite[2] = spr_Item_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Menu_Display_Message("Generic","ITEM");//slot 2 name
	    menu_event[2] = "Display_Item_Menu";//event for clicking slot 2
	    menu_animated[2] = 0;
    
	    menu_sprite[3] = spr_Search_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Menu_Display_Message("Generic","SEARCH");//slot 3 name
	    menu_event[3] = "Search";//event for clicking slot 3
	    menu_animated[3] = 0;
	}



}
