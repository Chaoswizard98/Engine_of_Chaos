function Create_TruthLie_Menu(_object) {
	//Creates the decision controler
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Decision_Controller);

	with(_this){
	    current_object = _object;//object that created this one
    
	    display_type = "Truth/Lie";
	    number_of_icons = 2;
	    default_cancel_option = 1;
	    max_pan = (Get_Camera_Width() - (((sprite_get_width(spr_Empty_Menu_Icon) + icon_separation) * number_of_icons)+sprite_get_width(spr_Menu_Name_Window)));//max pan
	    pan = max_pan;//pan
    
	    //icons
	    menu_icon[0] = spr_Truth_Menu_Icon;
	    menu_icon[1] = spr_Lie_Menu_Icon;
        
	    //names
	    menu_name[0] = Get_Menu_Display_Message("Generic","Truth");
	    menu_name[1] = Get_Menu_Display_Message("Generic","Lie");
    
	    //actions
	    menu_action[0] = "Truth";
	    menu_action[1] = "Lie";
    
	    //Setup complete, continue panning in
	    pan_direction = "in";
	    play_pan_sound = true;
	}
}