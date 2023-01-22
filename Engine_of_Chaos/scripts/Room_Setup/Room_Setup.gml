function Room_Setup(){
	var _script = asset_get_index("Room_Creation_"+string_replace(room_get_name(room),"room_",""));
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			script_execute(_script);//run the script
		}
	}
	else{
		Room_Creation_Default();
	}
}