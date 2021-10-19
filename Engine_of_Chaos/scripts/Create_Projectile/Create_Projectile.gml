function Create_Projectile(_projectile,_x,_y,_path,_direction){
	var _this = noone;
	if(_projectile != "none"){//create only if we have a valid projectile
		var _script = asset_get_index("Projectile_Create_Event_Default");
		var _new_script = asset_get_index("Projectile_Create_Event_" + _projectile);
		if(_new_script != -1){//If the asset exists
			if(script_exists(_new_script)){//If the asset is a script
				_script = _new_script;
			}
		}
		_this = script_execute(_script,_projectile,_x,_y,_path,_direction);//run the script
	}
	return _this;
}