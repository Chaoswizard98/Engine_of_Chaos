function Missing_Max_Cutscene() {
	var _jason = player_trigger;
	var _ciera = Get_Character("Ciera","Default");

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Hey " + Get_Character_Name("Local",_jason,"Total") + "?% I know things would be a bit more predictable without him,^ but we should really go find MAX before we leave town.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 1:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        instance_destroy();
	    break;
	}



}
