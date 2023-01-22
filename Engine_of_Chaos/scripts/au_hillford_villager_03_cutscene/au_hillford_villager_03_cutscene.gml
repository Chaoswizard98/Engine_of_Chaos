function AU_Hillford_Villager_03_Cutscene() {
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
	        state += 1;
			Create_YesNo_Menu(id);
	    break;
	    case 2:
	        state += 1;
			if(decision = "Yes"){
				Start_New_Dialogue(Get_Cutscene_Messages(id,"02"),true,true);
			}
			else{
				Start_New_Dialogue(Get_Cutscene_Messages(id,"03"),true,true);
			}
	    break;
	    case 3:
	        state += 1;
			_jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        instance_destroy();
	    break;
	}
}