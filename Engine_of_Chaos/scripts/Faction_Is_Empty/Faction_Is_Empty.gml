function Faction_Is_Empty() {
	var _lookup_type = argument[0];
	var _faction = argument[1];

	if(_faction = "none"){
	    return true;
	}
	else{
	    if(_lookup_type = "Global"){
	        for(i = 0; i < global.Number_Of_Characters; i+= 1){
	            if(global.Faction[i] = _faction){
	                return false;
	            }
	        }
	    }
	    else if (_lookup_type = "Local"){
	        with(obj_Character){
	            if(faction = _faction){
	                return false;
	            }
	        }
	    }
	}
	return true;



}
