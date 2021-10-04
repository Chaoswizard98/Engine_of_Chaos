function Remove_Cursed_Equipment(_lookup_type,_character){
	var i = 0;
	for(i = 0; i< global.Number_Of_Inventory_Slots; i+=1){//loop through inventory
	    if(Character_Is_Cursed_By_This_Item(_lookup_type,_character,i)){
	        Equip_Item(_lookup_type,_character,i,-1)
	    }
	}
}