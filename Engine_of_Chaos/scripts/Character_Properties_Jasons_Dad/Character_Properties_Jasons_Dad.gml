function Town_Character_Stats_Jasons_Dad(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Jasons_Dad";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		Set_NPC_Direction(_character,"Left",true);//character, direction, return after dialogue
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Jasons_Dad(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Jasons_Dad_Overworld; 
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Male_Mature_2");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}