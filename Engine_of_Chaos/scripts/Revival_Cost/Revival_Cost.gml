function Revival_Cost() {
	//checks to see if a character is cursed
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _cost_modifier = argument[2];
	var _cost = floor((Get_Character_Level(_lookup_type,_character,"Total")*10)*_cost_modifier);

	return _cost;



}
