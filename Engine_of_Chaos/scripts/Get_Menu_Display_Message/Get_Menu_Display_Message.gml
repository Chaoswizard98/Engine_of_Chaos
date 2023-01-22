function Get_Menu_Display_Message(_menu,_message_ID) {
	//switch(global.Language){
	//    case "English": return Menu_Message_English(_menu,_message_ID); break;
	//    default: return Menu_Message_English(_menu,_message_ID); break;
	//}
	
	var _script = asset_get_index("Menu_Message_"+global.Default_Language);
	var _new_script = asset_get_index("Menu_Message_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_menu,_message_ID);//Run set script
}