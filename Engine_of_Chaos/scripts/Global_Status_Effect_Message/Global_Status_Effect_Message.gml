function Global_Status_Effect_Message(_lookup_type,_character,_effect,_message_ID) {
	//switch(global.Language){
	//    case "English": return Status_Effect_Messages_English(_lookup_type,_character,_effect,_message_ID); break;
	//    default: return Status_Effect_Messages_English(_lookup_type,_character,_effect,_message_ID); break;
	//}
	
	var _script = asset_get_index("Status_Effect_Messages_"+global.Default_Language);
	var _new_script = asset_get_index("Status_Effect_Messages_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_lookup_type,_character,_effect,_message_ID);//Run set script
}