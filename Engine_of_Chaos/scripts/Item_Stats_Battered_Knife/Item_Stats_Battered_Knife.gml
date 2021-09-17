function Item_Stats_Battered_Knife(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Weapon_Icons;
	frame_number = 3;
	value = 80;
	shop_type = "Equipment";
	attack = 3;
	switch(_class){
	    case "THIF": main_hand = true; break;
	}
}