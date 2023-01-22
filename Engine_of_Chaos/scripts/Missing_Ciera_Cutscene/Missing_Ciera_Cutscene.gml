function Missing_Ciera_Cutscene() {
	var _jason = player_trigger;
	var _max = Get_Character("AU_Max","Default");

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        Create_Character_Dialogue("Local",_max,Get_Character_Name("Local",_jason,"Total") + "!^ We can't leave town just yet!^ We need to get CIERA first!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 1:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        instance_destroy();
	    break;
	}



}
