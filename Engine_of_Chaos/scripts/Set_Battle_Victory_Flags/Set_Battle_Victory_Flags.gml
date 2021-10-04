function Set_Battle_Victory_Flags(_trigger,_data1 = noone) {
	var _script = asset_get_index("Set_Battle_Victory_Flags_Default");
	var _new_script = asset_get_index("Set_Battle_Victory_Flags_"+obj_Battle_Controller.battle_ID);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_trigger,_data1);//run the script	
}