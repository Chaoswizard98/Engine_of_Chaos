function Get_Room_Transfer_Cutscene() {
	switch(room){
	    case room_Ashenwood:
	        if(global.Story_State = 2){
	            return "Missing_Ciera_Cutscene";
	        }
	        else if(global.Story_State = 3){
	            return "Missing_Max_Cutscene";
	        }
	    break;
	}

	return "none";



}
