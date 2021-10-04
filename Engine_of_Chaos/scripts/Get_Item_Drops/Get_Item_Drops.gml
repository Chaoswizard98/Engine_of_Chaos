function Get_Item_Drops(_attacker,_target) {
	var _message = "";

	//=====================
	//Universal Drop Tables
	//=====================
	_message += Drop_Table_Jogurt(_attacker,_target);
	
	//==============================
	//Character Specific Drop Tables
	//==============================
	var _script = "none";
	var _new_script = asset_get_index(_target.drop_table);
	if(_new_script != -1){//If the asset exists
		if(script_exists(_new_script)){//If the asset is a script
			_script = _new_script;
		}
	}
	if(_script != "none"){
		_message += script_execute(_script,_attacker,_target);//run the script
	}

	return _message;
}