function Get_Chest_Messages(_cutscene_object,_message_ID){
	var _script = asset_get_index("Chest_Messages_"+global.Default_Language);
	var _new_script = asset_get_index("Chest_Messages_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_cutscene_object,_message_ID);//Run set script
}