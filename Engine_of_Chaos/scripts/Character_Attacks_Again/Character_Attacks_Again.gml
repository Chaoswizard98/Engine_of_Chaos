function Character_Attacks_Again() {
	var _character = argument[0];

	var _attacker = Get_Battle_Cutscene_Character(_character);
	var _target_is_dead = false;
	if(Object_Is_Character(obj_Battle_Cutscene_Controller.original_target)){
	    if(Character_Is_Dead("Local",obj_Battle_Cutscene_Controller.original_target)){
	        _target_is_dead = true;;
	    }
	}

	if(!Character_Is_Dead("Local",_character)){//if the attacker isnt dead
	    if(!_target_is_dead){//if the target isnt dead
	        if(_attacker.attacks_performed < 2){//if they havent attacked max times yet,
	            if(Get_Character_Multi_Strike("Local",_character,"Total")>=random_range(0,100)){//test for multi-attack
	                return true;
	            }
	        }
	    }
	}

	return false;



}
