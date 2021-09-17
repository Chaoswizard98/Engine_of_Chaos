function Get_NPC_Dialogue_Messages(_npc,_player,_message_ID = _npc.dialogue_ID){
	var _script = asset_get_index("NPC_Dialogue_"+global.Default_Language);
	var _new_script = asset_get_index("NPC_Dialogue_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_npc,_player,_message_ID);//Run set script
}