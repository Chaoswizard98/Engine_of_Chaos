function Important_Character_Died() {
	var _character = argument[0];

	if(string_copy(_character.death_flag_script,0,20) = "Important_Character_"){//if their script starts with "Important_Character_"
	    obj_Battle_Controller.battle_flags[floor(real(string_delete(_character.death_flag_script,1,20)))] = _character.name;//remember character name to script number slot
	    if(floor(real(string_delete(_character.death_flag_script,1,20))) = 1){//If main boss is dead,
	        Kill_Entire_Faction(_character.faction);//Flag all other enemies for destruction
	    }
	}



}
