function Calculate_Threat(_threat_formula,_character,_target,_effect,_effect_level,_divisor){
	var _script = asset_get_index("Calculate_Threat_Default");
	var _new_script = asset_get_index("Calculate_Threat_" + _threat_formula);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_character,_target,_effect,_effect_level,_divisor);//run the script
}