function Item_Stats_Blizzard(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Item_Icons;
	frame_number = 29;
	use_degrade_chance = 100;
	max_use_range = 2;
	min_use_range = 0;
	use_size = 2;
	use_target_type = "Enemy";
	use_select_type = "Enemy";
	use_effect = "Freeze";
	use_effect_level = 3;
	value = 1200;
}