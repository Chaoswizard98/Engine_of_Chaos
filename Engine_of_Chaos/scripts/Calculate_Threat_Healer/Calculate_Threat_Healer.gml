function Calculate_Threat_Healer(_character,_target,_effect,_effect_level,_divisor){
	var _threat = 0;
	var _damage = 0;

	//===========
	//Get Damage=
	//===========
	if(_effect != "none"){//If we're invoking a magic effect (casting spell, using item, speaking word of power)
	    _damage = -Calculate_Spell_Damage(_character,_target,_effect,_effect_level,false,false,_divisor);//Use spell damage calc
	}
	else{//otherwise we're doing physical damage
	    _damage = Calculate_Physical_Damage(_character,_target,false,false);//use physical damage calc
	}

	//=========================
	//Test for Character Death=
	//=========================
	var _max_heal = (Get_Character_Max_Health("Local",_target,"Total") - Get_Character_Health("Local",_target,"Total"));
	if(_damage > _max_heal){//if we heal past target's max hp,
	    _threat = _max_heal;//set to max heal ammount
	}
	else{//otherwise threat is just set to damage
	    _threat = _damage;
	}

	return _threat;
}