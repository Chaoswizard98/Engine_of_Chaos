function Default_Threat() {
	var _character = argument[0];
	var _target = argument[1];
	var _effect = argument[2];
	var _effect_level = argument[3];
	var _divisor = argument[4];
	var _threat = 0;
	var _damage = 0;

	//===========
	//Get Damage=
	//===========
	if(_effect != "none"){//If we're invoking a magic effect (casting spell, using item, speaking word of power)
	    _damage = Calculate_Spell_Damage(_character,_target,_effect,_effect_level,false,false,_divisor);//Use spell damage calc
	}
	else{//otherwise we're doing physical damage
	    _damage = Calculate_Physical_Damage(_character,_target,false,false);//use physical damage calc
	}

	//=========================
	//Test for Character Death=
	//=========================
	if(_damage >= Get_Character_Health("Local",_target,"Total")){//if we kill the target
	    _threat = 999;//threat goes through the roof
	}
	else{//otherwise threat is just set to damage
	    _threat = _damage;
	}

	return _threat;



}
