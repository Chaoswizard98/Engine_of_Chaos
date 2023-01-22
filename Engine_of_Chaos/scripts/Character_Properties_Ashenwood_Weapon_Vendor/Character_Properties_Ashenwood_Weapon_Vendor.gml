function Town_Character_Stats_Ashenwood_Weapon_Vendor(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_script = "Generic_Shopkeeper_Dialogue";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		shop_ID[0] = "Ashenwood_Weapon";
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Ashenwood_Weapon_Vendor(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_SF2_Shopkeeper_Overworld;
	var _portrait = spr_SF2_Shopkeeper_Portrait;
	var _voice = Get_Generic_Voice("Male_Mature_3");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}