function Chest_Messages_English(_cutscene_object,_message_ID){
	var _chest = _cutscene_object.other_trigger;
	var _player_name = Get_Character_Name("Local",_cutscene_object.player_trigger,"Total");
    
	switch(_message_ID){
		case "Opens_Chest": 
			switch(_chest.container_type){
				case "Chest": return (_player_name + " opened the chest."); break;
				case "Barrel": return (_player_name + " searches the barrel."); break;
				case "Vase": return (_player_name + " searches the vase."); break;
				case "Area": return (_player_name + " investigates the area."); break;
			}
		break;
		case "Empty": return ("Unfortunately it was empty!"); break;
		case "Recieves_Gold": return (_player_name + " recieves " + string(_chest.gold) + " Gold!"); break;
		case "Found_Item": return (_player_name + " found the\n" + Get_Item_Stats(_chest.item,"Item_Name") + "."); break;
		case "Recieves_Item": return (_player_name + " recieves the\n" + Get_Item_Stats(_chest.item,"Item_Name") + "!");break;
		case "Inventory_Full": return ("But no one can hold it!"); break;
	}

	return ("Unregistered Dialogue Message.");
}