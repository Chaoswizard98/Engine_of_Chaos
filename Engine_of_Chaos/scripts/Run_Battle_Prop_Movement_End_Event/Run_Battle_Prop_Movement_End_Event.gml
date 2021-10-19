function Run_Battle_Prop_Movement_End_Event(_prop){
	var _script = asset_get_index("Battle_Prop_Movement_End_Event_Default");
	var _new_script = asset_get_index("Battle_Prop_Movement_End_Event_" + _prop.prop);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_prop);//run the script
}