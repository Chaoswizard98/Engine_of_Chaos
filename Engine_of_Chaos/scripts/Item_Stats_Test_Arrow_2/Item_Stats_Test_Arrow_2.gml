function Item_Stats_Test_Arrow_2(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("Test_Arrow_2","Item_Name","Test Arrow 2");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("Test_Arrow_2","Menu_Name","Test\n Arrow 2");//name as it appears in menus
	item_icon = spr_Weapon_Icons;
	frame_number = 1;
	value = 120;
	shop_type = "Equipment";
	attack = 3;
	min_attack_range = 1;
	max_attack_range = 1;
	projectile = "Test_Arrow_2";
	battle_sprite = spr_Battered_Arrow;
            
	switch(_class){
	    case "ARCR": main_hand = true; break;
	    case "SNPR": main_hand = true; break;
	}
}