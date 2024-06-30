function Item_Stats_AU_Healer_Staff(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Healer_Staff","Item_Name","Healer Staff");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Healer_Staff","Menu_Name","Healer\n Staff");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
	frame_number = 45;
	value = 100;
	shop_type = "Equipment";
	battle_sprite = spr_AU_Magic_Wand;
	
            
	switch(_class){
	    case "HEAL": main_hand = true; break;
	}
}