function Town_Character_Stats_Jess(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Jess";
		if(!Check_Story_Flag(0,0,"Talked_To_Jess")){//If we havent talked to Jess
			dialogue_script = "Jess_Dialogue";//Dialogue Message ID to print when talked to
		}
		else{
			dialogue_script = "NPC_Dialogue";	
		}
		allow_wander = true;//Allow NPC to wander.
		wander_radius = 6;//Set NPC's Wander Radius
	}
}


//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Jess(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Jess_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Female_Young_1");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}