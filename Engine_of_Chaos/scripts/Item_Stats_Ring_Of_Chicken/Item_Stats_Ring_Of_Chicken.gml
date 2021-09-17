function Item_Stats_Ring_Of_Chicken(){
	var _lookup_type = argument[0];//Lookup type for character stats (if provided)
	var _character = argument[1];//Character (if provided)
	
	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}
	
	item_icon = spr_Item_Icons;
	overworld_sprite_ID = spr_Chicken_Overworld;
	portrait_sprite_ID = spr_Chicken_Portrait;
	voice_ID = sfx_Dialogue01;
	battle_cutscene_sprite_ID = "Chicken";
	off_hand = true;
	shop_type = "Equipment";
	frame_number = 15;
	value = 10;
}