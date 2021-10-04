function Get_Terrain_Stats(_terrain,_stat,_movement_type = "Default"){
	var _script = asset_get_index("Get_Terrain_Stats_Default");
	var _new_script = asset_get_index("Get_Terrain_Stats_"+_terrain);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_movement_type,_stat);//run the script
}