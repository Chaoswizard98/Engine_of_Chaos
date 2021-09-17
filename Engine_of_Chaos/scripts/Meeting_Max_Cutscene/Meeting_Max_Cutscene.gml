function Meeting_Max_Cutscene() {
	var _jason = player_trigger;
	var _max = Get_Character("Max","Default");
	var _message = "";

	switch(state){
	    case 0: _message = (_jason.name + "!^ It's about time you got up!^ We're going to be late!"); break;
	    case 3: _message = ("Late for what?"); break;
	    case 4: _message = ("Our first official job request!%#Out of all the other adventuring groups in existence, our client specifically chose US for this mission.%#We must have built up quite the reputation after our first adventure!"); break;
	    case 5: _message = ("MAX.^ That's several days away.^ We've got plenty of time."); break;
	    case 8: _message = ("You can never start too early!^#We might have to disarm some traps along the way!"); break;
	    case 9: _message = ("When was the last time you've seen a trap around here?"); break;
	    case 10: _message = ("I had to disarm your door last time."); break;
	    case 13: _message = ("MAX,^ our door wasn't trapped.^ It was locked.^ There's a difference."); break;
	    case 14: _message = ("Well that didn't stop me from getting in."); break;
	    case 15: _message = ("That's not the point."); break;
	    case 18: _message = ("(sigh)^ Well since I'm already awake,^ I guess it can't hurt to head out early."); break;
	    case 20: _message = ("That's the spirit!^#We'll meet Ciera at her house and then head towards Hillford!"); break;
	    case 21: _message = ("MAX joins the party."); break;
	}



	switch(state){
	    case 0:
	        state += 2;
	        _jason.cutscene_mode = true;
	        _jason.allow_interaction = false;
	        _max.cutscene_mode = true;
	        Face_Direction(_jason,"Left");
	        Face_Direction(_max,"Right");
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 2:
	        state += 1;
	        alarm[0] = 20;
	    break;
	    case 3:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 4:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 5:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 6:
	        state += 1;
	        Shudder(_max);
	    break;
	    case 7:
	        state += 1;
	        alarm[0] = 20;
	    break;
	    case 8:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 9:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 10:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 11:
	        state += 1;
	        //Face_Direction(_jason,'Down');
	        Shake_Head(_jason);
	    break;
	    case 12:
	        state += 1;
	        alarm[0] = 20;
	    break;
	    case 13:
	        state += 1;
	        Face_Direction(_jason,"Left");
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 14:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 15:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 16:
	        state += 1;
	        //Face_Direction(_jason,'Down');
	        Nod_Head(_jason);
	    break;
	    case 17:
	        state += 1;
	        alarm[0] = 20;
	    break;
	    case 18:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,_message,id,true,true);
	    break;
    
	    case 19:
	        state += 1;
	        Perform_Jump(_max,2);
	    break;
	    case 20:
	        state += 1;
	        Create_Character_Dialogue("Local",_max,_message,id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 21:
	        state += 1;
	        Join_Party("Global",1,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	        Follow_Character(_max,_jason);
	        Create_Dialogue(noone,noone,_message,id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 22:
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _max.cutscene_mode = false;
	        global.Story_State += 1;
	        instance_destroy();
	    break;
	}



}
