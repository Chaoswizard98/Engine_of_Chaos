function Reset_Character_Depth(){
	var _character = argument[0];
	var _offset = 0;
	
	if(_character.global_ID != -1){
		_offset = (global.Number_Of_Characters - global_ID);
	}
	
	_character.depth = layer_get_depth(layer_get_id("Character_Instance_Layer")) - _offset;
	
}