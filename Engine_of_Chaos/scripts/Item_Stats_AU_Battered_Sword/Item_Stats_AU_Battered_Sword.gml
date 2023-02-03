function Item_Stats_AU_Battered_Sword(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Battered_Sword","Item_Name","Battered Sword");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Battered_Sword","Menu_Name","Battered\n Sword");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
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