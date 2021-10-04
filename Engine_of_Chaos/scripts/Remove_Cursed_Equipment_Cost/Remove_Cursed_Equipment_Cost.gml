function Remove_Cursed_Equipment_Cost(_lookup_type,_character,_cost_modifier){
	//checks to see if a character is cursed
	var _cost = 0;
	var i = 0;

	for(i = 0; i< global.Number_Of_Inventory_Slots; i+=1){//loop through inventory
	    if(Character_Is_Cursed_By_This_Item(_lookup_type,_character,i)){
	        _cost += floor(Get_Inventory_Item_Stats(_lookup_type,_character,i,"Value")*_cost_modifier);
	    }
	}
	return _cost;
}