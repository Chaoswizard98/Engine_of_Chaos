function Item_Stats_Battered_Sword(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Weapon_Icons;
	frame_number = 0;
	attack = 3;
	value = 100;
	shop_type = "Equipment";
	battle_sprite = spr_Battered_Sword;
	
	switch(_class){
	    case "SDMN": main_hand = true; break;
	    case "HERO": main_hand = true; break;
	}
	
}