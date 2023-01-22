function Create_Cheats_Menu(_object) {
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Options_Menu);

	with(_this){
	    current_object = _object;
	    window_pan_direction = "in";
	    play_pan_sound = true;
	    display_type = "Cheats";
    
	    number_of_menu_options = 7;//Number of options in array below
	    max_options_on_screen = 8; //Maximum number of options that will fit in the window
    
	    menu_options[0] = Get_Menu_Display_Message("Cheats_Menu","Control_All_Units");
	    menu_options[1] = Get_Menu_Display_Message("Cheats_Menu","Unlimited_Gold");
	    menu_options[2] = Get_Menu_Display_Message("Cheats_Menu","Buy_All_Items");
	    menu_options[3] = Get_Menu_Display_Message("Cheats_Menu","Invincibility");
	    menu_options[4] = Get_Menu_Display_Message("Cheats_Menu","Infinite_Magic");
	    menu_options[5] = Get_Menu_Display_Message("Cheats_Menu","Infinite_Item_Use");
		menu_options[6] = Get_Menu_Display_Message("Cheats_Menu","Unlimited_Movement");
    
	    menu_locked[0] = false;//Certain slots can be 'locked'
	    menu_locked[1] = false;
	    menu_locked[2] = false;
	    menu_locked[3] = false;
	    menu_locked[4] = false;
	    menu_locked[5] = false;
		menu_locked[6] = false;

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
	    Update_Cheats_Array();//Update the array with current settings
	}
}