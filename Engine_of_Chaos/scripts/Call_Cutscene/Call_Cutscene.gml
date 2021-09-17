function Call_Cutscene(_controller){
	with(_controller){
		var _script = asset_get_index(script_ID);
		if(_script != -1){//If the asset exists
			if(script_exists(_script)){//If the asset is a script
				script_execute(_script);//run the script
			}
		}
	}
}