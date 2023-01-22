function Get_Battle_Cutscene_Prop_Stats(_prop,_stat){
	var _script = asset_get_index("Battle_Prop_Stats_Default");
	var _new_script = asset_get_index("Battle_Prop_Stats_" + _prop);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_stat);//run the script
}