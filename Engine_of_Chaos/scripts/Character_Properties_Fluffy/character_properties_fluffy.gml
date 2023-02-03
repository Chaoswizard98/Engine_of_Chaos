function Town_Character_Stats_Fluffy(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Generic_Cat";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		Face_Direction(_character,"Right");
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Fluffy(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Generic_Cat_Grey_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Generic_Cat");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}