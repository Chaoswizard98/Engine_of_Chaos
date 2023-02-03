function Item_Stats_AU_Wooden_Spear(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Wooden_Spear","Item_Name","Wooden Spear");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Wooden_Spear","Menu_Name","Wooden\n Spear");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
	frame_number = 4;
	value = 80;
	shop_type = "Equipment";
	attack = 3;
	max_attack_range = 1;
	switch(_class){
	    case "KNT": main_hand = true; break;
	}
}