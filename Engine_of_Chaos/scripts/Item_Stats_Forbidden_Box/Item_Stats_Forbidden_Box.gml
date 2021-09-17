function Item_Stats_Forbidden_Box(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Item_Icons;
	frame_number = 30;
	max_use_range = 0;
	min_use_range = -1;
	use_size = 1;
	use_target_type = "Ally";
	use_select_type = "All_Allies";
	use_effect = "Brave_Apple";
	use_effect_level = 4;
            
	town_effect = "Brave_Apple";
	town_effect_level = 4;
	value = 99999;
}