function Item_Stats_Light_Of_Hope(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Item_Icons;
	frame_number = 24;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "All_Allies";
	use_effect = "Magic_Restore_Item";
	use_effect_level = 4;
	value = 10000;
}