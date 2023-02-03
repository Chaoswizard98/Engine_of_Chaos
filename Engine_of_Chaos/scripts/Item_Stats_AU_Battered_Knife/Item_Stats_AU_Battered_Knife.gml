function Item_Stats_AU_Battered_Knife(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Battered_Knife","Item_Name","Battered Knife");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Battered_Knife","Menu_Name","Battered\n Knife");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
	frame_number = 3;
	value = 80;
	shop_type = "Equipment";
	attack = 3;
	max_attack_range = 1;
	projectile = "Battered_Knife";
	battle_sprite = spr_Battered_Knife;
	switch(_class){
	    case "THIF": main_hand = true; break;
	}
}