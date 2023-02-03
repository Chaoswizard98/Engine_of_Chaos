function Town_Character_Stats_Milkshake(_character){
	with(_character){
		is_npc = true;//Flag them as an NPC
		dialogue_ID = "Generic_Cow";//Dialogue Message ID to print when talked to
		allow_wander = true;//Allow NPC to wander.
		wander_radius = 99;//Set NPC's Wander Radius
		if(global.Story_State = 3){
		    x = 264;
		    y = 672;
		    allow_wander = false;
		    direction = 0;
		    dialogue_ID = "Generic_Cow";
			moving = false;//stop moving
            speed_x = 0;//set speeds to 0
            speed_y = 0;//set speeds to 0
            move_speed = 0;//set move_speed to 0
		}
	}
}

//======================
//Overworld Sprite Setup
//======================
function Get_Appearance_Milkshake(_lookup_type,_character,_stat){
	var _overworld_sprite = spr_Generic_Cow_Overworld;
	var _portrait = noone;
	var _voice = Get_Generic_Voice("Generic_Cow");
	var _battle_sprite = "none";
	
	return Get_Basic_NPC_Appearance(_lookup_type,_character,_stat,_overworld_sprite,_portrait,_voice,_battle_sprite);
}