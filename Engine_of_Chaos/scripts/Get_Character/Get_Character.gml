function Get_Character() {
	//Gets a character based on arguments
	var _character_ID = argument[0];
	var _formula = argument[1];

	switch(_formula){
	    default://return character based on ID
	        with(obj_Character){
	            if(character_ID = _character_ID){
	                return id;
	            }
	        }
	    break;
	}

	return noone;



}
