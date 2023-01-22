function Grant_Experience(_character,_target,_formula,_damage) {
	//XP = (Z*D)/M;
	//Z = value based on level difference between attacker / target
	//D = Damage dealt / healed
	//M = Max Health of target
	//Slight RNG reduction of the total, 0-2
	//Minimum 1 xp granted.

	//var _character = argument[0];
	//var _target = argument[1];
	//var _formula = argument[2];
	//var _damage = argument[3];

	var _object = Get_Battle_Cutscene_Character(_character);//store xp gained in battle cutscene object
	var _z_value = Calculate_Z_Value(_character,_target);
	var _max_health = Get_Character_Max_Health("Local",_character,"Total");
	var _experience = 0;
	var _min_xp = 1;




	if((_formula = "Heal")||(_formula = "Magic_Restore")){
	    _z_value = 25;
	    _min_xp = 10;
	    _object.reduce_xp = false;//dont remove 1-2 xp at the end for healing spells
	}

	if(_formula = "Magic_Restore"){
	    _max_health = Get_Character_Max_Magic("Local",_character,"Total");
	}

	if(_formula = "Brave_Apple"){
	    _object.highest_z_value = 100 * Get_Character_Level_Scheme_Stats("Local",_character,"Max_Level","Base",1);
	    _object.experience_gained += _damage;
	}
	else{
	    //if(_character.can_gain_xp){//if this character can gain experience
	        _experience = floor((_z_value * _damage)/_max_health);
	        if(Character_Is_Dead("Local",_target)){
	            _experience = _z_value;
	        }
	        _experience -= irandom_range(0,2);
	        _experience = clamp(_experience,_min_xp,_z_value);
	        _object.experience_gained += _experience;
	        _object.highest_z_value = max(_object.highest_z_value,_z_value);//remember highest z value
	    //}
	}



}
