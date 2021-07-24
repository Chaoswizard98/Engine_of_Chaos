function Create_YesNo_Menu() {
	//Creates the decision controler
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Decision_Controller);

	with(_this){
	    current_object = argument[0];//object that created this one
    
	    display_type = "Yes/No";
	    number_of_icons = 2;
	    default_cancel_option = 1;
	    max_pan = (Get_Camera_Width() - (((sprite_get_width(spr_Empty_Menu_Icon) + icon_separation) * number_of_icons)+sprite_get_width(spr_Menu_Name_Window)));//max pan
	    pan = max_pan;//pan
    
	    //icons
	    menu_icon[0] = spr_Yes_Menu_Icon;
	    menu_icon[1] = spr_No_Menu_Icon;
        
	    //names
	    menu_name[0] = Get_Menu_Display_Message("Generic","Yes");
	    menu_name[1] = Get_Menu_Display_Message("Generic","No");
    
	    //actions
	    menu_action[0] = "Yes";
	    menu_action[1] = "No";
    
	    //Setup complete, continue panning in
	    pan_direction = "in";
	    play_pan_sound = true;
	}



}
