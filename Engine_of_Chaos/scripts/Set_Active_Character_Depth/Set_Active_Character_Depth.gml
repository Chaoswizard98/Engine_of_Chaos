function Set_Active_Character_Depth(){
	var _character = argument[0];
	_character.depth = layer_get_depth(layer_get_id("Active_Character_Instance_Layer"));
}