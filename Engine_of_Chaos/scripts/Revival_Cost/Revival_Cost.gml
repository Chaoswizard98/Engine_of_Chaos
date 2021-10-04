function Revival_Cost(_lookup_type,_character,_cost_modifier){
	var _cost = floor((Get_Character_Level(_lookup_type,_character,"Total")*10)*_cost_modifier);
	return _cost;
}