function Call_Cutscene_Move_Script(_character){
	var _script = asset_get_index("Character_Movement_Default");
	var _new_script = asset_get_index(_character.custom_move_script);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_character);//run the script
}