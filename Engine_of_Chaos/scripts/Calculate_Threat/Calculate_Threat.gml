function Calculate_Threat() {
	var _formula = argument[0];
	var _character = argument[1];
	var _target = argument[2];
	var _effect = argument[3];
	var _effect_level = argument[4];
	var _divisor = argument[5];
	var _threat = 0;
	var _damage = 0;

	switch(_formula){
	    case "Healer": return Healer_Threat(_character,_target,_effect,_effect_level,_divisor); break;//basic threat calc
	    case "Default": return Default_Threat(_character,_target,_effect,_effect_level,_divisor); break;//basic threat calc
	    default: return Default_Threat(_character,_target,_effect,_effect_level,_divisor);break;//default threat calc
	}



}
