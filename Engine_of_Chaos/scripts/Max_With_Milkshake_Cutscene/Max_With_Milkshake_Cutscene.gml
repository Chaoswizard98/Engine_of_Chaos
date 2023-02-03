function Max_With_Milkshake_Cutscene(){
	var _jason = player_trigger;
	var _max = Get_Character("AU_Max","Default");
	var _ciera = Get_Character("AU_Ciera","Default");
	var _milkshake = Get_Character("Milkshake","Default");

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _max.cutscene_mode = true;
	        Face_Direction(_max,"Left");
	        Shudder(_max);
	    break;
	    case 1:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"Who's a good boy?^ You are!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 2:
	        state += 1;
	        Create_Character_Dialogue("Local",_milkshake,"Moooooo.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 3:
	        state += 1;
	        Look_At_Target(_jason,_max);
	        Shudder(_jason);
	    break;
	    case 4:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"Are you done now?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 5:
	        state += 1;
	        Look_At_Target(_max,_jason);
	        Perform_Jump(_max,2);
	    break;
	    case 6:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,"Yep! I'm all set!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 7:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"Alright then.^ We'll head east towards Hillford.%\nThe rest of our party is going to meet us in the tavern there.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 8:
	        state += 1;
	        Look_At_Target(_ciera,_jason);
	        Look_At_Target(_jason,_ciera);
	        Create_Character_Dialogue("Local",_ciera,"We might want to pick up a few healing items at the shop as well.%\nIt sounds like wolves are taking up residence in the forest again.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 9:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,"Good to know.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 10:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _ciera.cutscene_mode = false;
	        _max.cutscene_mode = false
	        Follow_Character(_max,_jason);
	        Follow_Character(_ciera,_max);
	        _max.previous_x = _jason.x;
	        _max.previous_y = _jason.y;
	        _milkshake.allow_wander = true;
	        _milkshake.dialogue_ID = "Generic_Cow";
	        global.Story_State += 1;
	        instance_destroy();
	    break;
	}
}