function Player_Demo_Menu() {
	//Creates the decision controler
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Decision_Controller);

	with(_this){
	    current_object = argument[0];//object that created this one
    
	    display_type = "Yes/No";
	    number_of_icons = 3;
	    default_cancel_option = 2;
	    //icons
	    menu_icon[0] = spr_Yes_Menu_Icon;
	    menu_icon[1] = spr_No_Menu_Icon;
	    menu_icon[2] = spr_Empty_Menu_Icon;
        
	    //names
	    menu_name[0] = "Yes";
	    menu_name[1] = "No";
	    menu_name[2] = "Maybe";
    
	    //actions
	    menu_action[0] = "Yes";
	    menu_action[1] = "No";
	    menu_action[2] = "Maybe";
    
	    //Setup complete, continue panning in
	    pan_direction = "in";
	    play_pan_sound = true;
	}



}