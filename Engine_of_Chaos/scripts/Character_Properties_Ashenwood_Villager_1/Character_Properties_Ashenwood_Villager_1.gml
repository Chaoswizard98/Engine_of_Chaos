function Town_Character_Stats_Ashenwood_Villager_1(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Ashenwood_Villager_1";//Dialogue Message ID to print when talked to
		allow_wander = true;//Allow NPC to wander.
		wander_radius = 3;//Set NPC's Wander Radius
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Ashenwood_Villager_1(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Ashenwood_Villager_1_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Female_Young_2");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}