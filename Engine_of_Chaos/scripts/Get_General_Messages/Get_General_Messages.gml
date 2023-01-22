function Get_General_Messages(_menu,_message_ID,_data1 = "",_data2 = "",_data3 = "",_data4 = "",_data5 = "") {
	//switch(global.Language){
	    //case "English": return General_Messages_English(_menu,_message_ID,_data1,_data2,_data3,_data4,_data5); break;
	    //default: return General_Messages_English(_menu,_message_ID,_data1,_data2,_data3,_data4,_data5); break;
	//}
	
	var _script = asset_get_index("General_Messages_"+global.Default_Language);
	var _new_script = asset_get_index("General_Messages_"+global.Language);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;//Use the script
		}
	}
	return script_execute(_script,_menu,_message_ID,_data1,_data2,_data3,_data4,_data5);//Run set script
}
