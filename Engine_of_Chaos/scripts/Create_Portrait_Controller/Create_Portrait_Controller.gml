function Create_Portrait_Controller(_portrait,_displayType,_currentObject,_dead = false) {
	var _this;
	
	if(_displayType = "Dialogue"){
		_this = instance_create_layer(0,0,"Dialogue_Instance_Layer",obj_Portrait_Controller);//set temp variable in case multiple portraits exist.
	}
	else{
		_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Portrait_Controller);//set temp variable in case multiple portraits exist.
	}
	
	with(_this){
	    portrait = _portrait;
	    portrait_blink = noone;
		if(portrait != noone){
			if(sprite_exists(asset_get_index(sprite_get_name(_portrait)+"_Blink"))){
				portrait_blink = asset_get_index(sprite_get_name(_portrait)+"_Blink");
			}
		}
	    pan_direction = "in";
	    current_object = _currentObject;
	    display_type = _displayType;
	    is_dead = _dead;
	    if(display_type = "Dialogue"){
	        pan_y = max_dialogue_y_pan;
	    }
	    else if(display_type = "Status_Page"){
	        pan_x = max_status_x_pan;
	        pan_y = max_status_y_pan;
	    }
	    else if(display_type = "Member_List"){
	        pan_x = max_member_list_x_pan;
	        pan_y = max_member_list_y_pan;
	    }
	    else if(display_type = "Character_Creation"){
	        pan_x = max_character_creation_x_pan;
	        pan_y = max_character_creation_y_pan;
	    }
	}

	return _this;
}