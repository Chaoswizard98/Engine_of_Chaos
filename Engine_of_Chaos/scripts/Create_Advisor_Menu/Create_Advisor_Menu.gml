function Create_Advisor_Menu(_object,_character,_npc) {
	var _new_menu = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cross_Menu);

	with(_new_menu){
	    current_object = _object;
	    current_character = _character;
	    current_npc = _npc;
        
	    pan_y = max_y_pan;
	    pan_direction = "up";
	    number_of_menu_options = 4;//Number of menu options
	    play_pan_sound = true;
    
	    menu_sprite[0] = spr_Talk_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Menu_Display_Message("Generic","TALK");//slot 0 name
	    menu_event[0] = "Talk_To_Advisor";//event for clicking slot 0
	    menu_animated[0] = -1;
    
	    menu_sprite[1] = spr_Join_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Menu_Display_Message("Generic","JOIN");//slot 1 name
	    menu_event[1] = "Display_Member_List_Join";//event for clicking slot 1
	    menu_animated[1] = 0;
    
	    menu_sprite[2] = spr_Leave_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Menu_Display_Message("Generic","LEAVE");//slot 2 name
	    menu_event[2] = "Display_Member_List_Leave";//event for clicking slot 2
	    menu_animated[2] = 0;
    
	    menu_sprite[3] = spr_Help_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Menu_Display_Message("Generic","HELP");//slot 3 name
	    menu_event[3] = "Display_Church_Menu";//event for clicking slot 3
	    menu_animated[3] = 0;
	}



}
