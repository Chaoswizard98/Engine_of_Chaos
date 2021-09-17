function Item_Stats_Antidote(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Item_Icons;
	frame_number = 25;
	use_degrade_chance = 100;
	max_use_range = 1;
	min_use_range = -1;
	use_size = 1;
	target_other = true;
	use_target_type = "Ally";
	use_select_type = "Ally";
	use_effect = "Detox_Item";
	use_effect_level = 1;
	town_effect = "Detox_Item";
	town_effect_level = 1;
	value = 20;
}