function Call_NPC_Dialogue() {
	switch(script_ID){
	    case "Generic_Shopkeeper": Generic_Shopkeeper_Dialogue(); break; //Default shopkeeper script
	    case "Generic_Advisor": Generic_Advisor_Dialogue(); break; //default advisor script
	    case "Switch_Character": Switch_Character_Dialogue(); break; //switching what character we're controlling in town
	    case "Join_Party_During_Battle": Join_Party_During_Battle(); break; //character joins party in battle
	    case "Generic_Innkeeper": Generic_Innkeeper(); break;
    
	    case "Max_With_Milkshake": Max_With_Milkshake_Cutscene(); break;
	    case "Jess": 
	        if(global.Story_Flags[0,0] = "none"){//Havent triggered Jess Cutscene yet,
	            Jess_Cutscene();
	        }
	        else{//Otherwise, use default line
	            NPC_Dialogue(script_ID);
	        }
	    break;
    
	    default: NPC_Dialogue(script_ID); break; //default dialogue script (1 liners only)
	}



}
