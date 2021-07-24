function Global_Cutscene_Calls() {
	switch(cutscene_type){
	    case "Cutscene"://Calling normal cutscenes
	        Call_Cutscene();//global cutscene script
	    break;
	    case "Battle_Cutscene":
	        Call_Battle_Cutscene();
	    break;
	    case "NPC_Dialogue"://calling npc dialogue
	        Call_NPC_Dialogue();//global npc dialogue script
	    break;
	    /*case 'Advisor_Dialogue':
	        Call_Advisor_Dialogue();
	    break;*/
	}



}
