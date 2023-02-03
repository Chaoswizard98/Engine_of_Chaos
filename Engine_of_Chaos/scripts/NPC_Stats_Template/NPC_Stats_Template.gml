function Town_Character_Stats_NPCName(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Message_ID";//Dialogue Message ID to print when talked to
		allow_wander = true;//Allow NPC to wander.
		wander_radius = 6;//Set NPC's Wander Radius
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_NPCName(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_AU_Chaos_Overworld;
	var _portrait = noone;
	var _voice = sfx_Dialogue01;
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}