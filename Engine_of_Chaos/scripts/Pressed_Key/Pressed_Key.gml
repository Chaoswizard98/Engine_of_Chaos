function Pressed_Key(_key,_auto_move) {
	//checks if we pressed a key under certain parameters
	switch(_key){
	    case "Up_Right_Buttons":
	        if((keyboard_check_pressed(global.Up_Button)||(keyboard_check(global.Up_Button)&&(_auto_move)))&&(keyboard_check_pressed(global.Right_Button)||(keyboard_check(global.Right_Button)&&(_auto_move)))){ return true; }
	    break;
	    case "Up_Left_Buttons":
	        if((keyboard_check_pressed(global.Up_Button)||(keyboard_check(global.Up_Button)&&(_auto_move)))&&(keyboard_check_pressed(global.Left_Button)||(keyboard_check(global.Left_Button)&&(_auto_move)))){ return true; }
	    break;
	    case "Down_Right_Buttons":
	        if((keyboard_check_pressed(global.Down_Button)||(keyboard_check(global.Down_Button)&&(_auto_move)))&&(keyboard_check_pressed(global.Right_Button)||(keyboard_check(global.Right_Button)&&(_auto_move)))){ return true; }
	    break;
	    case "Down_Left_Buttons":
	        if((keyboard_check_pressed(global.Down_Button)||(keyboard_check(global.Down_Button)&&(_auto_move)))&&(keyboard_check_pressed(global.Left_Button)||(keyboard_check(global.Left_Button)&&(_auto_move)))){ return true; }
	    break;
	    case "Up_Button":
	        if(keyboard_check_pressed(global.Up_Button)||(keyboard_check(global.Up_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Down_Button":
	        if(keyboard_check_pressed(global.Down_Button)||(keyboard_check(global.Down_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Left_Button":
	        if(keyboard_check_pressed(global.Left_Button)||(keyboard_check(global.Left_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Right_Button":
	        if(keyboard_check_pressed(global.Right_Button)||(keyboard_check(global.Right_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Select_Button":
	        if(keyboard_check_pressed(global.Select_Button)||(keyboard_check(global.Select_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Cancel_Button":
	        if(keyboard_check_pressed(global.Cancel_Button)||(keyboard_check(global.Cancel_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Inspect_Button":
	        if(keyboard_check_pressed(global.Inspect_Button)||(keyboard_check(global.Inspect_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Main_Menu_Button":
	        if(keyboard_check_pressed(global.Main_Menu_Button)||(keyboard_check(global.Main_Menu_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Full_Screen_Button":
	        if(keyboard_check_pressed(global.Full_Screen_Button)||(keyboard_check(global.Full_Screen_Button)&&(_auto_move))){ return true; }
	    break;
	    case "Any_Button":
	        if(keyboard_check_pressed(vk_anykey)||(keyboard_check(vk_anykey)&&(_auto_move))){ return true; }
	    break;
	}

	return false;
}