function Call_Cutscene() {
	//This script calls a cutscene based on ID.
	switch(script_ID){
	    case "Jasons_Room_Cutscene": Jasons_Room_Cutscene(); break; //Story Cutscene 01
	    case "Meeting_Max": Meeting_Max_Cutscene(); break; //Story Cutscene 02
	    case "Meeting_Ciera": Meeting_Ciera_Cutscene(); break; //Story Cutscene 03
	    case "Battle_01_Intro": Battle_01_Intro_Cutscene(); break;
    
	    case "Missing_Max": Missing_Max_Cutscene(); break;
	    case "Missing_Ciera": Missing_Ciera_Cutscene(); break;
    
	    case "Finished_Demo": Finished_Demo_Cutscene(); break;
	}



}
