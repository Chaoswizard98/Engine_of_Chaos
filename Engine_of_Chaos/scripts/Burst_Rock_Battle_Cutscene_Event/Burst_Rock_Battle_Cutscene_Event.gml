function Burst_Rock_Battle_Cutscene_Event() {
	switch(state){
	    case "End_Start_Pan":
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.attacks_performed += 1;
	        _attacker.played_death_event = true;
	        state = "Perform_Animation";
        
	        //Create Dialogue
	        Create_Dialogue(noone,noone,Get_General_Messages("Battle_Cutscene","Burst_Rock_Exploded"),id,false,true);
	    break;
	    case "End_Animation":
	        Set_Character_Health("Local",attacker,"Set",0);//burst rock dies
	        var _attacker = Get_Battle_Cutscene_Character(attacker);
	        _attacker.alpha = 0;
	        Default_Battle_Cutscene_Event();
	    break;
	    default: Default_Battle_Cutscene_Event(); break;
	}



}
