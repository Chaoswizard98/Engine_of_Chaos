function Get_Weapon_Cutscene_Position(_object,_stat){
	var _script = asset_get_index("Get_Weapon_Position_"+_object.sprite_ID);
	
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			return script_execute(_script,_object,_stat);//run the script
		}
	}
	
	return Get_Weapon_Position_Default(_object,_stat);//run the default script
}
