function Create_Challenges_Menu(_object){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Options_Menu);

	with(_this){
	    current_object = _object;
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "Challenges";
    
	    number_of_menu_options = 2;//Number of options in array below
	    max_options_on_screen = 8; //Maximum number of options that will fit in the window
    
	    menu_options[0] = Get_Menu_Display_Message("Challenges_Menu","Challenge_1");
	    menu_options[1] = Get_Menu_Display_Message("Challenges_Menu","Debug_Room");
    
	    menu_locked[0] = true;//Certain slots can be 'locked'
	    menu_locked[1] = false;
    
	    //============================
	    //Post Modifyable Calculations
	    //============================
	    if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
	        max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
	    }
	}
}