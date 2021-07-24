function Global_Battle_Cutscene_Event() {
	switch(event){
	    case "Prism_Flower": Prism_Flower_Battle_Cutscene_Event(); break;
	    case "Burst_Rock": Burst_Rock_Battle_Cutscene_Event(); break;
	    case "Summon_Spell": Summon_Spell_Battle_Cutscene_Event(); break;
	    //Stat Boosters
	    case "Brave_Apple": Brave_Apple_Battle_Cutscene_Event(); break;
	    case "Forbidden_Box": Forbidden_Box_Battle_Cutscene_Event(); break;
	    case "Attack_Boost": Attack_Boost_Battle_Cutscene_Event(); break;
	    case "Defense_Boost": Defense_Boost_Battle_Cutscene_Event(); break;
	    case "Agility_Boost": Agility_Boost_Battle_Cutscene_Event(); break;
	    case "Movement_Boost": Movement_Boost_Battle_Cutscene_Event(); break;
	    case "Max_Health_Boost": Max_Health_Boost_Battle_Cutscene_Event(); break;
	    case "Max_Magic_Boost": Max_Magic_Boost_Battle_Cutscene_Event(); break;
	    default: Default_Battle_Cutscene_Event(); break;
	}



}
