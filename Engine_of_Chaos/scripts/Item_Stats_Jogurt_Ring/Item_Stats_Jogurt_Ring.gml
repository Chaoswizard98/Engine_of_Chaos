function Item_Stats_Jogurt_Ring(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}

	item_icon = spr_Item_Icons;
	off_hand = true;
	shop_type = "Equipment";
	frame_number = 37;
	value = 40;
}