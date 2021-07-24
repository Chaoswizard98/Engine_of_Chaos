function Create_Game_Settings_Menu() {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Options_Menu);

	with(_this){
	    current_object = argument[0];
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "Game_Settings";
    
	    number_of_menu_options = 5;//Number of options in array below
	    max_options_on_screen = 8; //Maximum number of options that will fit in the window
    
	    //Make sure you also change Update_Control_Array and Swap_Duplicate_Controls scripts
	    //Change mappings in step event #2
	    menu_options[0] = Get_Menu_Display_Message("Game_Settings_Menu","Reset_Defaults");
	    menu_options[1] = Get_Menu_Display_Message("Game_Settings_Menu","Dialogue_Speed");
	    menu_options[2] = Get_Menu_Display_Message("Game_Settings_Menu","Perma_Death");
	    //menu_options[3] = Get_Menu_Display_Message('Game_Settings_Menu','Difficulty');
	    menu_options[3] = Get_Menu_Display_Message("Game_Settings_Menu","Sound_Volume");
	    menu_options[4] = Get_Menu_Display_Message("Game_Settings_Menu","Music_Volume");
    
	    menu_locked[0] = false;//Certain slots can be 'locked'
	    menu_locked[1] = false;
	    menu_locked[2] = false;
	    //menu_locked[3] = false;
	    menu_locked[3] = false;
	    menu_locked[4] = false;
    
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
	    Update_Game_Settings_Array();//Update the array with current settings
	}



}
