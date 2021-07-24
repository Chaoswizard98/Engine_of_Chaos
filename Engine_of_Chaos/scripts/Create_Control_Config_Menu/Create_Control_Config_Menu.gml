function Create_Control_Config_Menu() {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Options_Menu);

	with(_this){
	    current_object = argument[0];
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "Control_Config";
    
	    number_of_menu_options = 8;//Number of options in array below
	    max_options_on_screen = 9; //Maximum number of options that will fit in the window
    
	    //Make sure you also change Update_Control_Array and Swap_Duplicate_Controls scripts
	    //Change mappings in step event #2
	    menu_options[0] = "Up";
	    menu_options[1] = "Down";
	    menu_options[2] = "Left";
	    menu_options[3] = "Right";
	    menu_options[4] = "Select";
	    menu_options[5] = "Cancel";
	    menu_options[6] = "Inspect";
	    menu_options[7] = "Main Menu";
    
	    menu_locked[0] = false;//Certain slots can be 'locked'
	    menu_locked[1] = false;
	    menu_locked[2] = false;
	    menu_locked[3] = false;
	    menu_locked[4] = false;
	    menu_locked[5] = false;
	    menu_locked[6] = false;
	    menu_locked[7] = false;
    
	    //============================
	    //Post Modifyable Calculations
	    //============================
	    if(number_of_menu_options < max_options_on_screen){//if there are less than the limit of options
	        max_options_on_screen = number_of_menu_options;//shrink max to the total number of options
	    }
    
	    //Define control map array
	    for(i = 0; i< number_of_menu_options; i+= 1){
	        settings_array[i] = "Unknown Key";
	    }
	    Update_Control_Array();//Update the array with current controls
	}



}
