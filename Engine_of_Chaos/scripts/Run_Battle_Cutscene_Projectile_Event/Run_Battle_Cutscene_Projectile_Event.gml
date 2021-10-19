function Run_Battle_Cutscene_Projectile_Event(_event,_object){
	var _script = asset_get_index("Projectile_" + _event + "_Event_Default");
	var _new_script = asset_get_index("Projectile_" + _event + "_Event_" + _object.projectile);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_object);//run the script
}