function Get_Appearance(_lookup_type,_character,_stat){
	var _script;
	if(_lookup_type = "Local"){
		_script = asset_get_index("Get_Appearance_"+_character.character_ID);
	}
	else if(_lookup_type = "Global"){
		_script = asset_get_index("Get_Appearance_"+global.character_ID[_character]);
	}
	else{
		_script = asset_get_index("Get_Appearance_"+_character);
	}
	
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			return script_execute(_script,_lookup_type,_character,_stat);//run the script
		}
	}
	
	return Get_Appearance_Default(_lookup_type,_character,_stat);//run the default script
}