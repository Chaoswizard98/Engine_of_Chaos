function Town_Character_Stats_AU_Hillford_Priest(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_script = "Generic_Priest_Dialogue";//Dialogue Script to run
		dialogue_ID = "Priest";
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		Set_NPC_Direction(_character,"Down",true);
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_AU_Hillford_Priest(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_AU_Hillford_Priest_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Male_Old_2");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}