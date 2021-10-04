function Create_Difficulty_Menu(_object) {
	//Creates the decision controler
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Decision_Controller);

	with(_this){
	    current_object = _object;//object that created this one
    
	    display_type = "Yes/No";
	    number_of_icons = 4;
	    default_cancel_option = 1;
	    max_pan = (Get_Camera_Width() - (((sprite_get_width(spr_Empty_Menu_Icon) + icon_separation) * number_of_icons)+sprite_get_width(spr_Menu_Name_Window)));//max pan
	    pan = max_pan;//pan
    
	    //icons
	    menu_icon[0] = spr_Easy_Menu_Icon;
	    menu_icon[1] = spr_Normal_Menu_Icon;
	    menu_icon[2] = spr_Hard_Menu_Icon;
	    menu_icon[3] = spr_Insane_Menu_Icon;
        
	    //names
	    menu_name[0] = Get_Menu_Display_Message("Generic","Easy");
	    menu_name[1] = Get_Menu_Display_Message("Generic","Normal");
	    menu_name[2] = Get_Menu_Display_Message("Generic","Hard");
	    menu_name[3] = Get_Menu_Display_Message("Generic","Insane");
    
	    //actions
	    menu_action[0] = "Easy";
	    menu_action[1] = "Normal";
	    menu_action[2] = "Hard";
	    menu_action[3] = "Insane";
    
	    //Setup complete, continue panning in
	    pan_direction = "in";
	    play_pan_sound = true;
	}
}