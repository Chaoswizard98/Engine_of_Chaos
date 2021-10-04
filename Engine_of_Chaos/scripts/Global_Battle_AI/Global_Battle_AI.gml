function Global_Battle_AI(_character) {
	var _script = asset_get_index("AI_Default_Physical");
	var _new_script = asset_get_index(_character.ai_script_ID);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_character);//run the script
}