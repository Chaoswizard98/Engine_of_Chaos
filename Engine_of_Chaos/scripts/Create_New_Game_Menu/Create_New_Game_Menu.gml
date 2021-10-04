function Create_New_Game_Menu(_object) {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Options_Menu);

	with(_this){
	    current_object = _object;
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "New_Game";
    
	    number_of_menu_options = 4;//Number of options in array below
	    max_options_on_screen = 4; //Maximum number of options that will fit in the window
    
	    menu_options[0] = Get_Menu_Display_Message("Generic","EMPTY");
	    menu_options[1] = Get_Menu_Display_Message("Generic","EMPTY");
	    menu_options[2] = Get_Menu_Display_Message("Generic","EMPTY");
	    menu_options[3] = Get_Menu_Display_Message("Generic","EMPTY");
    
	    menu_locked[0] = false;//Certain slots can be 'locked'
	    menu_locked[1] = false;
	    menu_locked[2] = false;
	    menu_locked[3] = false;
    
	    //============================
	    //Post Modifyable Calculations
	    //============================
	    if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
	        max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
	    }
	}

	return _this;
}