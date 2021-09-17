function Set_Monster_Spawner_Stats(_object,_name){
	_object.spawner_ID = _name;
	var _script = asset_get_index("Set_Monster_Spawner_Stats_"+_name);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			script_execute(_script,_object);//run the script
		}
	}
}