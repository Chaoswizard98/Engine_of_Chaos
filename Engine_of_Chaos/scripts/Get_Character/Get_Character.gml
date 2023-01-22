function Get_Character(_character_ID,_formula = "Default"){
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