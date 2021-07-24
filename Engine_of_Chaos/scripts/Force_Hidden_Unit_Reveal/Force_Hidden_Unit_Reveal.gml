function Force_Hidden_Unit_Reveal() {
	var _character_ID = argument[0];
	var i = 0;
	for(i = 0; i < obj_Battle_Controller.number_of_hidden_units; i+= 1){//loop through hidden units
	    if(obj_Battle_Controller.hidden_units[i].character_ID = _character_ID){
	        obj_Battle_Controller.hidden_units[i].reveal_criteria = "Next_Action";
	    }
	}



}
