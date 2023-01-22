function Calculate_Spell_Damage(_attacker,_target,_effect,_level,_critical_hit,_counter_attack,_divisor){
	var _damage = 0;
	
	if(Get_Spell_Stats(_effect,_level,"Damage_Formula","Local",_attacker) != "Split"){//If damage is not split evenly amongst targets
	    _divisor = 1;//Don't split damage between targets
	}
	if (Get_Spell_Stats(_effect,_level,"Damage_Formula","Local",_attacker) = "No_Damage"){
	    return _damage;
	}

	//Get Resistances
	var _fire_resistance = (1 - Get_Character_Fire_Resistance("Local",_target,"Total"));
	var _ice_resistance = (1 - Get_Character_Ice_Resistance("Local",_target,"Total"));
	var _water_resistance = (1 - Get_Character_Water_Resistance("Local",_target,"Total"));
	var _lightning_resistance = (1 - Get_Character_Lightning_Resistance("Local",_target,"Total"));
	var _wind_resistance = (1 - Get_Character_Wind_Resistance("Local",_target,"Total"));
	var _earth_resistance = (1 - Get_Character_Earth_Resistance("Local",_target,"Total"));
	var _light_resistance = (1 - Get_Character_Light_Resistance("Local",_target,"Total"));
	var _shadow_resistance = (1 - Get_Character_Shadow_Resistance("Local",_target,"Total"));
	var _magic_resistance = (1 - Get_Character_Magic_Resistance("Local",_target,"Total"));

	//Get Damages
	var _fire_damage = floor(((Get_Spell_Stats(_effect,_level,"Fire_Damage","Local",_attacker) / _divisor) * _fire_resistance) * _magic_resistance);
	var _ice_damage = floor(((Get_Spell_Stats(_effect,_level,"Ice_Damage","Local",_attacker) / _divisor) * _ice_resistance) * _magic_resistance);
	var _water_damage = floor(((Get_Spell_Stats(_effect,_level,"Water_Damage","Local",_attacker) / _divisor) * _water_resistance) * _magic_resistance);
	var _lightning_damage = floor(((Get_Spell_Stats(_effect,_level,"Lightning_Damage","Local",_attacker) / _divisor) * _lightning_resistance) * _magic_resistance);
	var _wind_damage = floor(((Get_Spell_Stats(_effect,_level,"Wind_Damage","Local",_attacker) / _divisor) * _wind_resistance) * _magic_resistance);
	var _earth_damage = floor(((Get_Spell_Stats(_effect,_level,"Earth_Damage","Local",_attacker) / _divisor) * _earth_resistance) * _magic_resistance);
	var _light_damage = floor(((Get_Spell_Stats(_effect,_level,"Light_Damage","Local",_attacker) / _divisor) * _light_resistance) * _magic_resistance);
	var _shadow_damage = floor(((Get_Spell_Stats(_effect,_level,"Shadow_Damage","Local",_attacker) / _divisor) * _shadow_resistance) * _magic_resistance);

	var _magic_damage = floor((Get_Spell_Stats(_effect,_level,"Magic_Damage","Local",_attacker) / _divisor) * _magic_resistance);
	var _void_damage = floor(Get_Spell_Stats(_effect,_level,"Void_Damage","Local",_attacker) / _divisor);
	var _heal_ammount = floor(Get_Spell_Stats(_effect,_level,"Heal_Ammount","Local",_attacker) / _divisor);

	//Get Crit
	var _crit = 1+(.25 * _critical_hit);


	//================
	//Finalize Damage=
	//================
	if(_heal_ammount > 0){//if healing
	    _damage = -_heal_ammount;//set damage to heal ammount
	}
	else{//otherwise, sum up all damage types
	    if(!Character_Is_Under_Effect("Local",_target,"Magic_Immunity")){//if character isnt immune to magic
	        _damage = floor((_fire_damage + _ice_damage + _water_damage + _lightning_damage + _wind_damage + _earth_damage + _light_damage + _shadow_damage + _magic_damage + _void_damage)*_crit);
	        _damage = max(_damage,1);//always do at least 1 damage
	    }
	}

	return _damage;
}