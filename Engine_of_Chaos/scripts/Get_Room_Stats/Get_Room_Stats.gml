function Get_Room_Stats(_stat,_direction){
	var _ran = false;
	var _script = asset_get_index("Room_Stats_"+string_replace(room_get_name(room),"room_",""));
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			_ran = true;
			return script_execute(_script,_stat,_direction);//run the script
		}
	}
	if(!_ran){
		return Room_Stats_Default(_stat,_direction);
	}
}