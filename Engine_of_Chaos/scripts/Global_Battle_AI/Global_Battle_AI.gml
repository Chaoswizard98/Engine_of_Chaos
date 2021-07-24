function Global_Battle_AI() {
	var _character = argument[0];

	switch(_character.ai_script_ID){
	    //==========
	    //Battle_01=
	    //==========
	    case "Default_Physical": AI_Default_Physical(_character); break;
	    case "Battle_01_Alpha_Wolf": AI_Battle_01_Alpha_Wolf(_character); break;
	    case "Battle_01_Wolf_01": AI_Battle_01_Wolf_01(_character); break;
	    case "Battle_01_Alpha_Wolf_Guard": AI_Battle_01_Alpha_Wolf_Guard(_character); break;
	    case "Battle_01_Wolf_Group_2": AI_Battle_01_Wolf_Group_2(_character); break;
	    default: AI_Default_Physical(_character); break;//AI_Test(_character); break;
	    //default: AI_Do_Nothing(_character); break;
	}



}
