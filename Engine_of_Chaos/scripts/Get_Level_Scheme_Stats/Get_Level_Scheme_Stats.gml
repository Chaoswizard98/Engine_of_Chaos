function Get_Level_Scheme_Stats(_lookup_type,_character,_level_scheme,_stat,_sub_stat,_character_level){
	var _script = asset_get_index("Level_Scheme_Default");
	var _new_script = asset_get_index("Level_Scheme_"+_level_scheme);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_lookup_type,_character,_stat,_sub_stat,_character_level);//run the script
}