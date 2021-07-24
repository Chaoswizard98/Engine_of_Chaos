function Remove_Cursed_Equipment_Cost() {
	//checks to see if a character is cursed
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _cost_modifier = argument[2];
	var _cost = 0;
	var i = 0;

	for(i = 0; i< global.Number_Of_Inventory_Slots; i+=1){//loop through inventory
	    if(Character_Is_Cursed_By_This_Item(_lookup_type,_character,i)){
	        _cost += floor(Get_Inventory_Item_Stats(_lookup_type,_character,i,"Value")*_cost_modifier);
	    }
	}

	return _cost;



}
