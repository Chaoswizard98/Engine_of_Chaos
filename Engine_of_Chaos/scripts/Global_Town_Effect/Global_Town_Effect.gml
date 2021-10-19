function Global_Town_Effect(_object){
	var _script = asset_get_index("Town_Spell_Effect_State_"+state+"_Default");
	var _new_script = asset_get_index("Town_Spell_Effect_State_"+state+"_"+effect);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	script_execute(_script,_object);//run the script
}