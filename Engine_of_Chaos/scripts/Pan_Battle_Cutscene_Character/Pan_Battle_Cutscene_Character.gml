function Pan_Battle_Cutscene_Character() {
	var _object = argument[0];
	var _pan_direction = argument[1];

	_object.pan_direction = _pan_direction;

	with(_object){
	    if(pan_direction = "in"){
	        x_pan = max_x_pan;
	        display_HUD = true;
	    }
	    else if(pan_direction = "in_long"){
	        x_pan = -(max_x_pan*2);
	        display_HUD = true;
	    }
	    else{//panning out, dont display HUD
	        display_HUD = false;
	    }
	}



}
