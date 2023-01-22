function Set_Challenge_Menu_Properties(_controller){
	//Define 
	with(_controller){
		number_of_menu_options = 2;//Number of options in array below
	    max_options_on_screen = 8; //Maximum number of options that will fit in the window
		
		//Names of the menu options
		menu_options[0] = Get_Menu_Display_Message("Challenges_Menu","Challenge_1");
	    menu_options[1] = Get_Menu_Display_Message("Challenges_Menu","Debug_Room");
		
		//Whether they are currently enabled or disabled
	    menu_locked[0] = false;
	    menu_locked[1] = false;
		
		menu_room[0] = room_Ashenwood;
		menu_room[1] = room_Hillford;
		//The room to spawn the player in
	}
}