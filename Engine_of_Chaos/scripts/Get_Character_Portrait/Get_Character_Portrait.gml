function Get_Character_Portrait() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _formula = argument[2];

	return Get_Appearance(_lookup_type,_character,"Portrait");
}