function Town_Character_Stats_Ashenwood_Villager_3(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Ashenwood_Villager_3";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		Set_NPC_Direction(_character,"Right",true); 
		face_player_during_dialogue = false;
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Ashenwood_Villager_3(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Ashenwood_Villager_3_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Female_Young_1");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}