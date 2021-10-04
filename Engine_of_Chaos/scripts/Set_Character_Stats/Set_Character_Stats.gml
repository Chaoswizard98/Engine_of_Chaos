function Set_Character_Stats(_character, _character_ID = _character.character_ID){
	_character.character_ID = _character_ID;
	var _script = asset_get_index("Town_Character_Stats_"+_character.character_ID);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			script_execute(_script,_character);//run the script
		}
	}
	Set_Appearance(_character);
}