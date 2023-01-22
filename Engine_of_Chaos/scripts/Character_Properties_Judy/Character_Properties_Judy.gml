function Town_Character_Stats_Judy(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Judy";//Dialogue Message ID to print when talked to
		if(Check_Story_Flag(0,1,"Returned_Fluffy")){
		    dialogue_ID = "Judy_With_Fluffy";
		}
		allow_wander = false;//Allow NPC to wander.
		Set_NPC_Direction(_character,"Right",true);//character, direction, return after dialogue
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Judy(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_AU_Judy_Overworld; 
	var _portrait = noone;
	var _voice = sfx_Dialogue07;
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}