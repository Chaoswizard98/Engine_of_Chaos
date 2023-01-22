function Town_Character_Stats_AU_Hillford_Innkeeper(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_script = "Generic_Innkeeper_Dialogue";//Dialogue Message ID to print when talked to
		dialogue_ID = "AU_Hillford_Innkeeper";
		allow_wander = false;//Allow NPC to wander.
		wander_radius = 0;//Set NPC's Wander Radius
		shop_ID[0] = "Hillford_Inn"; 
		sell_value_modifier = .6;//sells for 60% of item value
		Set_NPC_Direction(_character,"Down",true);
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_AU_Hillford_Innkeeper(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Ashenwood_Innkeeper_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Male_Mature_2");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}