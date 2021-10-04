function Get_Faction_Stats(_faction,_stat,_target_faction = "none"){
	var _script = asset_get_index("Get_Faction_Stats_Default");
	var _new_script = asset_get_index("Get_Faction_Stats_"+_faction);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	return script_execute(_script,_stat,_target_faction);//run the script
}