function Get_Battle_Cutscene_Character() {
	var _character = argument[0];
	var _object = noone;

	with(obj_Battle_Cutscene_Character){
	    if(character = _character){
	        _object= id;
	        break;
	    }
	}

	if(_object = noone){//if the object doesnt exist
	    _object = Create_Battle_Cutscene_Character(_character,"Normal","Idle");
	}

	return _object;



}
