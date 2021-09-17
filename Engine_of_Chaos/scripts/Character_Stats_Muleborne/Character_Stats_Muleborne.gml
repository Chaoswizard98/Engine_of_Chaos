function Town_Character_Stats_Muleborne(){
	var _character = argument[0];
	
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Muleborne";//Dialogue Message ID to print when talked to
		allow_wander = true;//Allow NPC to wander.
		wander_radius = 3;//Set NPC's Wander Radius
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Muleborne(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Muleborne_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Male_Old_2");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}