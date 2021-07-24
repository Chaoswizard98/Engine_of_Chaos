function Character_Counter_Attacks() {
	var _attacker = argument[0];
	var _target = argument[1];

	if(_attacker != _target){//dont counter ourselves
	    if(Get_Battle_Cutscene_Character(_attacker).can_counter){//if they can counter (can only counter once)
	        if(Target_In_Range(_attacker,_target,"Attack",0,0)){//can we attack the target?
	            if(Target_Is_Enemy(_attacker,_target)&&(Get_Character_Attack_Target_Type("Local",_attacker,"Total") = "Enemy")){//are they the correct target type?
	                if(Get_Character_Counter("Local",_attacker,"Total")>=random_range(0,100)){//RNG against counter chance
	                    return true;
	                }
	            }
	        }
	    }
	}

	return false;



}
