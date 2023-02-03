function Item_Stats_AU_Wooden_Staff(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Wooden_Staff","Item_Name","Wooden Staff");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Wooden_Staff","Menu_Name","Wooden\n Staff");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
	frame_number = 2;
	value = 80;
	shop_type = "Equipment";
	attack = 3;
	battle_sprite = spr_Wooden_Staff;
            
	switch(_class){
	    case "HEAL": main_hand = true; break;
	    case "MAGE": main_hand = true; break;
	}
}