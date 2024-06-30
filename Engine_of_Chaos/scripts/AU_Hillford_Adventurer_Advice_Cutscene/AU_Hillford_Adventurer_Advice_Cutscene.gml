function AU_Hillford_Adventurer_Advice_Cutscene() {
	var _jason = player_trigger;
	var _adventurer = other_trigger;

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
			Create_Character_Dialogue("Local",_adventurer,Get_Cutscene_Messages(id,"01"),id,false,true);
	    break;
	    case 1:
	        state += 1;//increment state
			Create_YesNo_Menu(id);//create menu, set callback object ID to this object (cutscene controller in this case)
	    break;
	    case 2://When an option is selected, this object's decision variable is set, and this event is called (via user event 14)
	        state = 3;
			if(decision = "Yes"){//Simple test for decision outcome
				Start_New_Dialogue(Get_Cutscene_Messages(id,"02"),true,false);
			}
			else{
				Start_New_Dialogue(Get_Cutscene_Messages(id,"03"),true,false);
			}
	    break;
	    case 3:
	        state += 1;
			Append_Dialogue(Get_Cutscene_Messages(id,"04"),true,true);
	    break;
		
		case 4:
			state += 1;
			Face_Direction(_adventurer,"Down");
			alarm[0] = 60;
		break;
		
		case 5:
			state += 1;
			Nod_Head(_adventurer);
		break
			
		case 6:
			state += 1;
			Create_Character_Dialogue("Local",_adventurer,Get_Cutscene_Messages(id,"05"),id,false,true);
		break;
		
		case 7:
			state += 1;
			_jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        instance_destroy();
		break;
	}
}