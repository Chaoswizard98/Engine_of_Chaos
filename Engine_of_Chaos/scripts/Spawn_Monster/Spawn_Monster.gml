function Spawn_Monster(_object){
	var _script = asset_get_index("Spawn_Monster_"+_object.spawner_ID);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			return script_execute(_script,_object);//run the script
		}
	}
	return noone;
}