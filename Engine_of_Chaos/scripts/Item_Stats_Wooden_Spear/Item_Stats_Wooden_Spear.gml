function Item_Stats_Wooden_Spear(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Weapon_Icons;
	frame_number = 4;
	value = 80;
	shop_type = "Equipment";
	attack = 3;
	max_attack_range = 1;
	switch(_class){
	    case "KNT": main_hand = true; break;
	}
}