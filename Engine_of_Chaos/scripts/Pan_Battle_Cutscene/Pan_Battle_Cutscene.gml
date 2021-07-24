function Pan_Battle_Cutscene() {
	//Somehow figures out how to correctly pan the cutscene
	/*
	Info we have.
	state
	attacker (on screen or not)
	target (on screen or not)
	previous_target (on screen or not)


	Ranged Attack
	opposite grounds
	-pan out -> pan camera -> pan in
	same grounts
	-pan out -> pan in alt
	*/
	var _action = argument[0];

	var _attacker = Get_Battle_Cutscene_Character(attacker);//the one attacking
	var _target = Get_Battle_Cutscene_Character(target);//the one we're targeting

	var _previous_target = noone;
	if(previous_target != noone){
	    _previous_target = Get_Battle_Cutscene_Character(previous_target);
	}

	if(performing_aoe && _action = "To_Target"){
	    _action = "To_Next_Target";
	}
	pan_type = "in";

	//==============================
	//Return to attacking character=
	//==============================
	if(_action = "To_Attacker"){
	    camera_action = "Default";
	    camera_state = "Pan_Out_Character";
	    camera_old_target = target;
	    camera_target = attacker;
    
	    if(_attacker.location != _target.location){
	        if(_attacker.location = "Foreground"){
	            pan_direction = "Left";
	        }
	        else{
	            pan_direction = "Right";
	        }
	    }
    
	    if(_attacker.location = "Foreground"){
	        _attacker.position = "Right";
	    }
	    else{
	        _attacker.position = "Left";
	    }
	}
	//==========================
	//Pan to the current target=
	//==========================
	else if(_action = "To_Target"){
	    camera_action = "Default";
	    camera_state = "Pan_Out_Character";
	    camera_old_target = attacker;
	    camera_target = target;
    
	    if(_attacker.location != _target.location){
	        if(_attacker.location = "Foreground"){
	            pan_direction = "Right";
	        }
	        else{
	            pan_direction = "Left";
	        }
	    }
	    else{//base position is the same, run alt pan
	        if(_target.location = "Foreground"){
	            _target.position = "Left";
	        }
	        else{
	            _target.position = "Right";
	        }
	    }
	}
	//==========================
	//Pan to the current target=
	//==========================
	else if(_action = "To_Next_Target"){
	    camera_action = "Default";
	    camera_state = "Pan_Out_Character";
	    camera_old_target = previous_target;
	    camera_target = target;
    
	    if(_attacker.location != _target.location){
	        pan_type = "in_long";
	        if(_attacker.location = "Foreground"){
	            pan_direction = "Right";
	        }
	        else{
	            pan_direction = "Left";
	        }
	    }
	    else{//base position is the same, run alt pan
	        if((target_type = "Ally")||(target_type = "All_Allies")){
	            if(_target.location = "Foreground"){
	                _target.position = "Left";
	            }
	            else{
	                _target.position = "Right";
	            }
	        }
	        else{
	            pan_type = "in";
	        }
	    }
    
	}
	//===================
	//Return To Attacker=
	//===================
	else if(_action = "Return_To_Attacker"){
	    camera_action = "Default";
	    camera_state = "Pan_Out_All_Characters";
	    camera_old_target = previous_target;
	    camera_target = attacker;
    
	    if(_attacker.location != _previous_target.location){
	        if(_attacker.location = "Foreground"){
	            pan_direction = "Left";
	        }
	        else{
	            pan_direction = "Right";
	        }
	    }
    
	    if(_attacker.location = "Foreground"){
	        _attacker.position = "Right";
	    }
	    else{
	        _attacker.position = "Left";
	    }
	}




	//Start camera pan
	event_perform(ev_other,ev_user1);




}
