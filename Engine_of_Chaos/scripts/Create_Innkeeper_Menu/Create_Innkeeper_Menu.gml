function Create_Innkeeper_Menu() {
	//Creates the decision controler
	var _this;
	_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Decision_Controller);

	with(_this){
	    current_object = argument[0];//object that created this one
    
	    display_type = "Yes/No";
	    number_of_icons = 2;
	    default_cancel_option = 2;//Note 2 is not actually accessible, we need it for drawing purposes to avoid "Array out of bounds"
	    max_pan = (Get_Camera_Width() - (((sprite_get_width(spr_Empty_Menu_Icon) + icon_separation) * number_of_icons)+sprite_get_width(spr_Menu_Name_Window)));//max pan
	    pan = max_pan;//pan
    
	    //icons
	    menu_icon[0] = spr_Buy_Menu_Icon;
	    menu_icon[1] = spr_Talk_Menu_Icon;
        
	    //names
	    menu_name[0] = Get_Menu_Display_Message("Generic","Buy");
	    menu_name[1] = Get_Menu_Display_Message("Generic","Talk");
	    menu_name[2] = Get_Menu_Display_Message("Generic","Cancel");
    
	    //actions
	    menu_action[0] = "Buy";
	    menu_action[1] = "Talk";
	    menu_action[2] = "Cancel";
    
	    //Setup complete, continue panning in
	    pan_direction = "in";
	    play_pan_sound = true;
	}



}
