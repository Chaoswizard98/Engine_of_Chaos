function Global_Status_Effect_Message() {
	//for language settings
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];
	var _message_ID = argument[3];



	switch(global.Language){
	    case "English": return Status_Effect_Messages_English(_lookup_type,_character,_effect,_message_ID); break;
	    default: return Status_Effect_Messages_English(_lookup_type,_character,_effect,_message_ID); break;
	}



}
