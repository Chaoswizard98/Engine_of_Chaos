function Create_Challenges_Menu(_object){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Challenges_Menu_Controller);

	with(_this){
	    current_object = _object;
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "Challenges";
    
		Set_Challenge_Menu_Properties(_this);
    
	    //============================
	    //Post Modifyable Calculations
	    //============================
	    if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
	        max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
	    }
		
		for (i = 0; i< number_of_menu_options; i += 1){
	        if(!menu_locked[i]){
	            arrow_position = i;
	            if(arrow_position >= max_options_on_screen){
	                arrow_position = (max_options_on_screen - 1);
	                start_index = (i - max_options_on_screen);
	            }
	            break;
	        }
	    }
	}
}