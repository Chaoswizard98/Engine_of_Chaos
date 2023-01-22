function Disable_Hidden_Units() {
	//disables hidden units and adds them to the hidden units list
	with(obj_Character){
	    if(hidden){//if the character is hidden,
	        obj_Battle_Controller.hidden_units[obj_Battle_Controller.number_of_hidden_units] = id;//add them to the list
	        obj_Battle_Controller.number_of_hidden_units += 1;//increment counter
	    }
	}

	var i = 0;
	for(i = 0; i<obj_Battle_Controller.number_of_hidden_units; i += 1){//loop through all hidden units
		if(obj_Battle_Controller.hidden_units[i].disable_on_hide){
			instance_deactivate_object(obj_Battle_Controller.hidden_units[i]);//deactivate them
		}
	}
}