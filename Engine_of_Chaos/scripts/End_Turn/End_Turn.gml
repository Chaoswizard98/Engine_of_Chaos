function End_Turn() {
	var _character = argument[0];
	var _event = argument[1];

	Update_Character_Start_Position(_character);
	Update_Region_Flags();
	if(_event = "Search"){//if we're searching / talking to an npc, battle HUD is already panned out
	    Execute_Battle_Event("End_Turn");//run end turn event
	}
	else if(_event = "Target"){
	    obj_Battle_Controller.snap_cursor_to_character = false;
	    Pan_Out_Land_Effect_Window("End_Turn");
	}
	else if(_event = "Battle_Cutscene"){
	    obj_Battle_Controller.snap_cursor_to_character = false;
	    Face_Direction(_character,"Down");//face down
	}
	else{//otherwise, we need to pan the battle hud out first
	    Pan_Out_Land_Effect_Window("End_Turn");
	}



}
