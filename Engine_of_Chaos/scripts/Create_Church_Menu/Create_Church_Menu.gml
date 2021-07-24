function Create_Church_Menu() {
	var _new_menu;
	_new_menu = instance_create_layer(0,0,"UI_Instance_Layer",obj_Cross_Menu);

	with(_new_menu){
	    current_object = argument[0];
	    current_character = argument[1];
	    current_npc = argument[2];
    
	    pan_y = max_y_pan;
	    pan_direction = "up";
	    number_of_menu_options = 4;//Number of menu options
	    play_pan_sound = true;
    
	    menu_sprite[0] = spr_Raise_Menu_Icon;//slot 0 sprite
	    menu_name[0] = Get_Menu_Display_Message("Generic","RAISE");//slot 0 name
	    menu_event[0] = "Church_Raise";//event for clicking slot 0
	    menu_animated[0] = -1;
    
	    menu_sprite[1] = spr_Cure_Menu_Icon;//slot 1 sprite
	    menu_name[1] = Get_Menu_Display_Message("Generic","CURE");//slot 1 name
	    menu_event[1] = "Church_Cure";//event for clicking slot 1
	    menu_animated[1] = 0;
    
	    menu_sprite[2] = spr_Promote_Menu_Icon;//slot 2 sprite
	    menu_name[2] = Get_Menu_Display_Message("Generic","PROMOTE");//slot 2 name
	    menu_event[2] = "Church_Promote";//event for clicking slot 2
	    menu_animated[2] = 0;
    
	    menu_sprite[3] = spr_Save_Menu_Icon;//slot 3 sprite
	    menu_name[3] = Get_Menu_Display_Message("Generic","SAVE");//slot 3 name
	    menu_event[3] = "Church_Save";//event for clicking slot 3
	    menu_animated[3] = 0;
	}



}
