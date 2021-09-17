function Get_Battle_Cutscene_Sprite_Stats(){
	var _sprite_ID = argument[0];
	var _animation = argument[1];
	var _stat = argument[2];

	var _script = asset_get_index("Get_Battle_Sprite_Stats_"+_sprite_ID);
	
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			return script_execute(_script,_animation,_stat);//run the script
		}
	}
	
	return Get_Battle_Sprite_Stats_Default(_animation,_stat);//run the default script
}