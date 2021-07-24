function Create_Portrait_Controller() {
	var _currentObject, _portrait_ID, _displayType, _this, _dead;

	_portrait_ID = argument[0];
	_displayType = argument[1];
	_currentObject = argument[2];

	_dead = false;
	if(argument_count > 3){
	    _dead = argument[3]
	}
	
	if(_displayType = "Dialogue"){
		_this = instance_create_layer(0,0,"Dialogue_Instance_Layer",obj_Portrait_Controller);//set temp variable in case multiple portraits exist.
	}
	else{
		_this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Portrait_Controller);//set temp variable in case multiple portraits exist.
	}
	
	with(_this){
	    portrait = Get_Portrait(_portrait_ID,false);//portrait
	    portrait_blink = Get_Portrait(_portrait_ID,true);//blink frames
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
