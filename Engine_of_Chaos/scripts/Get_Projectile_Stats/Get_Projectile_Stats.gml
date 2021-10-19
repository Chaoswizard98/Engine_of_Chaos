function Get_Projectile_Stats(_projectile,_stat){
	var _script = asset_get_index("Projectile_Stats_Default");
	var _new_script = asset_get_index("Projectile_Stats_" + _projectile);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_stat);//run the script
}