function Global_Battle_Cutscene_Character_Animation_Event(_object){
	var _script = asset_get_index("Battle_Sprite_Animation_Default");
	var _new_script = asset_get_index("Battle_Sprite_Animation_"+_object.character.character_ID);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_object);//run the script
}