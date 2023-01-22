function Global_Shop_Event() {
	//In case you wanted to run a completely different
	//set of events for shops... here ya go!

	if(Faction_Is_Empty(lookup_type,current_player.faction)){
	    Shop_Empty_Faction_Event();
	}
	else{
	    switch(script_ID){
	        case "Buy_Item": Shop_Buy_Event(); break;
	        case "Sell_Item": Shop_Sell_Event(); break;
	        case "Repair_Item": Shop_Repair_Event(); break;
	        default: Shop_Buy_Event(); break;
	    }
	}
}