function Item_Stats_Battered_Arrow(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Weapon_Icons;
	frame_number = 1;
	value = 120;
	shop_type = "Equipment";
	attack = 3;
	min_attack_range = 1;
	max_attack_range = 1;
	projectile = "Battered_Arrow";
	battle_sprite = spr_Battered_Arrow;
            
	switch(_class){
	    case "ARCR": main_hand = true; break;
	    case "SNPR": main_hand = true; break;
	}
}