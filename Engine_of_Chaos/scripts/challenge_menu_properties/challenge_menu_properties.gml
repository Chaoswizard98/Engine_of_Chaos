function Set_Challenge_Menu_Properties(_controller){
	//Define 
	with(_controller){
		number_of_menu_options = 2;//Number of options in array below
	    max_options_on_screen = 8; //Maximum number of options that will fit in the window
		
		menu_options[0] = Get_Menu_Display_Message("Challenges_Menu","Challenge_1");//Name of the menu
		menu_locked[0] = false;//Whether they are currently enabled or disabled
		menu_room[0] = room_Ashenwood;//The room to spawn the player in
		
	    menu_options[1] = Get_Menu_Display_Message("Challenges_Menu","Debug_Room");//Name of the menu
	    menu_locked[1] = false;//Whether they are currently enabled or disabled
		menu_room[1] = room_Test_Battle;//The room to spawn the player in
		
	}
}