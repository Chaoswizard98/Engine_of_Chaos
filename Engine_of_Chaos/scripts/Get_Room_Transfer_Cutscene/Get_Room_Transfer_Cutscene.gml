function Get_Room_Transfer_Cutscene() {
	switch(room){
	    case room_Ashenwood:
	        if(global.Story_State = 2){
	            return "Missing_Ciera";
	        }
	        else if(global.Story_State = 3){
	            return "Missing_Max";
	        }
	    break;
	}

	return "none";



}
