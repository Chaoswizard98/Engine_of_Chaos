function Meeting_Ciera_Cutscene() {
	var _jason = player_trigger;
	var _max = Get_Character("Max","Default");
	var _ciera = Get_Character("Ciera","Default");
	var _milkshake = Get_Character("Milkshake","Default");

	switch(state){
	    case 0:
	        state += 1;//Note, Max will be mid-movement at this point, so both the player and max will trigger this event almost back to back
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _max.cutscene_mode = true;
	    break;
	    case 1:
	        state += 1;
	        Stop_Following_Character(_max);
	        Move_Character(_max,"Right",1,6);//character,direction,tiles,speed
	    break;
	    case 2:
	        state += 1;
	        Play_Sound(sfx_Hit);
	        _max.depth -= 2;
	        Pan_Camera_To_Location(840,336,false);
	        Move_Character(_jason,"Right",.5,6);
	        Move_Character(_max,"Right",2,6);//character,direction,tiles,speed
	    break;
	    case 3:
	        state += 1;
	        _jason.rotation = 270;
	        _jason.y += 8;
	        _jason.image_speed = 0;
	    break;
	    case 4:
	        state += 1;
	        _max.depth += 2;
	        Move_Character(_max,"Up",6.5,6);//character,direction,tiles,speed
	    break;
	    case 5:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 6:
	        state += 1;
	        Move_Character(_max,"Up",.5,3,"Up");
	    break;
	    case 7:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 8:
	        state += 1;
	        Move_Character(_max,"Up",.5,3,"Up");
	    break;
	    case 9:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,3,"Up");
	        state += 1;
	    break;
	    case 10:
	        state += 1;
	        _jason.rotation = 0;
	        _jason.y -= 8;
	        Move_Character(_jason,"Right",.5,2);
	    break;
	    case 11:
	        state += 1;
	        Shake_Head(_jason);
	    break;
	    case 12:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"CIERA wake up!",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 13:
	        state += 1;
	        _jason.custom_move_script = "Jason_Movement_01";
	        Move_Character(_jason,"Right",1,2);
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 14:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 15:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 16:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 17:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 18:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 19:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 20:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 21:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 22:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 23:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 24:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 25:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 26:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 27:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 28:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 29:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 30:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 31:
	        state += 1;
	        Move_Character(_max,"Up",.5,6,"Up");
	    break;
	    case 32:
	        Play_Sound(sfx_Door);
	        Move_Character(_max,"Down",.5,6,"Up");
	        state += 1;
	    break;
	    case 33:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"MAX what are you doing?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 34:
	        state += 1;
	        Face_Direction(_max,"Down");
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"I don't know why she isn't answering the door.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 35:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"Because it's early and she's probably sleeping?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 36:
	        state += 1;
	        Perform_Jump(_max,2);
	    break;
	    case 37:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"I think she might have been kidnapped.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 38:
	        state += 1;
	        Shake_Head(_jason);
	    break;
	    case 39:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"You can't be serious.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 40:
	        state += 1;
	        Shudder(_max);
	    break;
	    case 41:
	        state += 1;
	        Move_Character(_max,"Down",1,3,"Down",-1,false);
	        Move_Character(_jason,"Left",1,3,"Right");
	    break;
	    case 42:
	        state += 1;
	        Face_Direction(_max,"Left");
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"You wait here.^ I'll go through the window.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 43:
	        state += 1;
	        Perform_Jump(_jason,1);
	        Move_Character(_max,"Right",2,3,"Right",-1,false);
	    break;
	    case 44:
	        state += 1;
	        Move_Character(_jason,"Right",2.5,6);
	    break;
	    case 45:
	        state += 1;
	        Move_Character(_max,"Left",1,3,"Right",-1,false);
	        Move_Character(_jason,"Left",1.5,3,"Right");
	    break;
	    case 46:
	        state += 1;
	        Face_Direction(_max,"Left");
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"Yeah, you're not doing that again.",id,true,true);
	    break;
	    case 47:
	        state += 1;
	        _ciera = Create_NPC(840,240,"Down","Ciera",true);
	        Move_Character(_ciera,"Down",2,1);
	        with(instance_position(840,264,obj_Door_Parent)){
	            event_perform(ev_other,ev_user0);
	        }
	        Face_Direction(_jason,"Up");
	        Face_Direction(_max,"Up");
	    break;
	    case 48:
	        state += 1;
	        Shudder(_ciera);
	    break;
	    case 49:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Good Morning.",id,true,true);
	    break;
	    case 50:
	        state += 1;
	        Perform_Jump(_max,2);
	    break;
	    case 51:
	        state += 1;
	        Move_Character(_max,"Up",1,3);
	    break;
	    case 52:
	        state += 1;
	        Face_Direction(_max,"Left");
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"CIERA! Thank goodness you're awake!",id,true,true);
	    break;
	    case 53:
	        state += 1;
	        Face_Direction(_ciera,"Right");
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Barely.^ How do you have this much energy in the morning?",id,true,true);
	    break;
	    case 54:
	        state += 1;
	        Perform_Jump(_max,2);
	    break;
	    case 55:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"How can you not have energy on such a momentous day?%#Someone has specifically asked for our adventuring party!%#To think we've already achieved legendary status after only our first adventure!",id,true,true);
	    break;
	    case 56:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Or our client lives in the area and picked a name at random.",id,true,true);
	    break;
	    case 57:
	        state += 1;
	        Shake_Head(_max);
	    break;
	    case 58:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"Well that doesn't make any sense.",id,true,true);
	    break;
	    case 59:
	        state += 1;
	        Face_Direction(_max,"Down");
	        Perform_Jump(_max,2);
	    break;
	    case 60:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_max,"Total"),Get_Voice(Get_Character_Voice("Local",_max,"Total")),"Oh shoot! I forgot to say goodbye to Milkshake!",id,true,true);
	    break;
	    case 61:
	        state += 1;
	        Move_Character(_max,"Down",6,6);
	        Face_Direction(_jason,"Down");
	        Face_Direction(_ciera,"Down");
	    break;
	    case 62:
	        state += 1;
	        Move_Character(_max,"Left",8,6);
	    break;
	    case 63:
	        state += 1;
	        Move_Character(_max,"Down",1,6);
	    break;
	    case 64:
	        state += 1;
	        Move_Character(_max,"Left",7,6);
	    break;
	    case 65:
	        state += 1;
	        Shudder(_ciera);
	    break;
	    case 66:
	        state += 1;
	        Move_Character(_ciera,"Right",1,1);
	    break;
	    case 67:
	        state += 1;
	        Move_Character(_ciera,"Down",1,1);
	    break;
	    case 68:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Uhm.^ Who's Milkshake?",id,true,true);
	    break;
	    case 69:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"Eh,^ MAX named one of my grandpa's cows Milkshake.%#He keeps trying to convince me that she's an adventurer.",id,true,true);
	    break;
	    case 70:
	        state += 1;
	        Nod_Head(_ciera);
	    break;
	    case 71:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_ciera,"Total"),Get_Voice(Get_Character_Voice("Local",_ciera,"Total")),"Yeah,^ that sounds like MAX to me.",id,true,true);
	    break;
	    case 72:
	        state += 1;
	        Move_Character(_jason,"Down",1,2);
	    break;
	    case 73:
	        state += 1;
	        Shudder(_jason);
	    break;
	    case 74:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"Come on.^ Let's go get him.",id,true,true);
	    break;
	    case 75:
	        state += 1;
	        Join_Party("Global",2,"Player",true,true);//lookup_type, ID, faction, in_battle_party, can_leave_battle_party
	        Follow_Character(_ciera,_jason);
	        Create_Dialogue("none",Get_Voice("none"),"CIERA joins the party.",id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Join_Party,obj_Dialogue_Controller);
	    break;
	    case 76:
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _ciera.cutscene_mode = false;
	        _max.cutscene_mode = false
	        _max.x = 312;
	        _max.y = 672;
	        _milkshake.x = 264;
	        _milkshake.y = 672;
	        _milkshake.allow_wander = false;
	        _milkshake.direction = 0;
	        _milkshake.dialogue_ID = "none";
	        Set_Camera_Target(_jason);
	        global.Story_State += 1;
	        instance_destroy();
	    break;
	    /*
	    case 14:
	        _player.cutscene_mode = false;
	        _player.allow_interaction = true;
	        global.Story_State += 1;
	        Play_Music(bgm_Town,'Fade_To_Next',250,0);
	        instance_destroy(obj_Screen_Fade_Controller);
	        instance_destroy();
	    break;*/
	}



}
