function Item_Stats_AU_Magic_Wand(_lookup_type,_character){
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_name = Get_Item_Display_Name("AU_Magic_Wand","Item_Name","Magic Wand");//name of item (for dialogue)
	menu_name = Get_Item_Display_Name("AU_Magic_Wand","Menu_Name","Magic\n Wand");//name as it appears in menus
	item_icon = spr_AU_Weapon_Icons;
	frame_number = 45;
	value = 100;
	shop_type = "Equipment";
	word_of_power = "AU_Magic_Wand";
	word_of_power_level = 1;
	max_attack_range = 1;
	battle_sprite = spr_AU_Magic_Wand;
            
	switch(_class){
	    case "HEAL": main_hand = true; break;
	    case "MAGE": main_hand = true; break;
	}
}