function Quit_Game_Cutscene() {
	//var _character = player_trigger;
	switch(state){
	    case 0:
	        state += 1;
	        Create_Dialogue("none",Get_Voice("Quit"),Get_General_Messages("Generic_Battle","Quit"),id,false,false);
	    break;
	    case 1:
	        state += 1;
	        Create_YesNo_Menu(id);
	    break;
	    case 2:
	        state += 1;
	        Pan_Out_Dialogue();
	    break;
	    case 3:
	        state += 1;
	        if(decision = "Yes"){
	            Create_Screen_Fade(c_black,0,1,.04,"out",id);
	        }
	        else{
	            UI_Cancel_Event(player_trigger,"Backed_Out_Of_Menu","none");
	            instance_destroy();
	        }
	    break;
	    case 4:
	        state += 1;
	        room_goto(room_Title_Screen);
	        instance_destroy();
	    break;
	}



}
