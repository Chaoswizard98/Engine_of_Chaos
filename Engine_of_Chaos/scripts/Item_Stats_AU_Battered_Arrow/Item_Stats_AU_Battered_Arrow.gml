function Item_Stats_AU_Battered_Arrow(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Battered_Arrow","Item_Name","Battered Arrow");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Battered_Arrow","Menu_Name","Battered\n Arrow");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
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