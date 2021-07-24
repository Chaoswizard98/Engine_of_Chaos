function Start_Character_Turn() {
	var _character = argument[0];

	Generate_Movement_Range(_character);
	Set_Active_Character_Depth(_character);//they appear above all other characters

	if(_character.control_in_battle||global.Control_All_Units){//if player controlled (change to can control script)
	    _character.allow_interaction = true;
	}
	else{//Run AI event
	    with(_character){
	        waiting_for_AI = true;
	        ai_timer = max_ai_timer;
	    }
	    //End_Character_Movement(_character,'End_Movement');//reset depth and clear movement tiles
	    //End_Turn(_character,'End_Turn');
	}



}
