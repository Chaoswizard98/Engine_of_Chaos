function Global_Town_Effect(){
	var _script = asset_get_index("Town_Effect_Default");
	var _new_script = asset_get_index(effect);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script);//run the script
}