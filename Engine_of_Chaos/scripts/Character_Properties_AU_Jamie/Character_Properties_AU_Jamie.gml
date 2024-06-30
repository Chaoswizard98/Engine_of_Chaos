function Character_Properties_AU_Jamie(){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "AU_Jamie";//Dialogue Message ID to print when talked to
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_AU_Jamie(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_AU_Jamie_Overworld;
	var _portrait = spr_AU_Jamie_Portrait;
	var _voice = Get_Generic_Voice("Female_Kid_1");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}