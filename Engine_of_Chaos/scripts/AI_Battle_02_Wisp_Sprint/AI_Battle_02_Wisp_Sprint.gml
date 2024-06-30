function AI_Battle_02_Wisp_Sprint(_character) {
	var _skip_action = false;

	if(Player_Entered_Region(3)){//If player has been to region 2
	    _skip_action = AI_Attack_Target(_skip_action,_character,"Default",99,-99);//<skip_action>, <character>, <formula>, <speed>, <min_threat>
	    _skip_action = AI_Move_Towards_Closest_Target(_skip_action,_character,"Enemy",99,60);//<skip_action>, <character>, <formula>, <speed>, <search_range>
	    _skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>
	}
	else{
		if(Find_Distance_Radius(_character.x,_character.y,720,432) > 4){//If unit is more than 4 tiles away from set location, move towards location
			_skip_action = AI_Move_To_Location(_skip_action,_character,720,432,99,60);//<skip_action>, <character>, <x>, <y>, <speed>, <search_range>
		}
		else{//Otherwise, just wander
			_skip_action = AI_Wander(_skip_action,_character,4,2,2,"Default")
		}
	    _skip_action = AI_Do_Nothing(_skip_action,_character);//<skip_action>, <character>
	}
}