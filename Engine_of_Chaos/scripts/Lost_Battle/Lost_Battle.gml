function Lost_Battle(_script){
	if(_script = "none"){
		_script = asset_get_index("Battle_Loss_Conditions_Default");
		var _new_script = asset_get_index("Battle_Loss_Conditions_"+obj_Battle_Controller.battle_ID);
		if(_new_script != -1){//If the asset exists
			if(script_exists(_new_script)){//If the asset is a script
				_script = _new_script;
			}
		}
		return script_execute(_script);//run the script
	}
	else{
		return _script;
	}
}