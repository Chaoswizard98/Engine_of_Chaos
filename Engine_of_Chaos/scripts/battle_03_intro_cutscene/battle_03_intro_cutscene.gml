function Battle_03_Intro_Cutscene() {
	var _lookup = "Local";
	var _jason = Get_Character("AU_Jason","Default");
	var _max = Get_Character("AU_Max","Default");
	var _ciera = Get_Character("AU_Ciera","Default");
	//var _wolf;
	//with(obj_Wolf){
	//    if(ai_script_ID = "AI_Battle_01_Wolf_01"){
	//        _wolf = id;
	//    }
	//}

	switch(state){
	    case 0:
	        state += 1;
			global.Story_State += 1;
			
	        //_jason.cutscene_mode = true;
	        //_jason.x -= 48;
        
	        //if(_max != noone){
	        //    _max.x -= 24;
	        //    _max.cutscene_mode = true;
	        //}
	        //if(_ciera != noone){
	        //    _ciera.x -= 24;
	        //    _ciera.cutscene_mode = true;
	        //}
        
	        //_wolf.x -= 168;
	        //_wolf.y += 72;
	        //_wolf.cutscene_mode = true;
			//Play_Music(noone,"Fade_Out",250,0);
			var _jason = Spawn_Player("AU_Jason","Hillford_Mines");//default character, default spawn location (Overwritten by room transition controller if it exists)
			Start_Room(_jason);
	        Finish_Room_Transition(id);
	    break;
		case 1:
			state += 1;
			//Room_Transfer(_jason,"Force",room_Hillford,"Hillford_Mines");
			alarm[0] = 2;
		break;
		case 2:
			Room_Transfer(_jason.character_ID,"Force",room_Battle_02,"Hillford_Mines");
		break;
	    //case 1:
	    //    state += 1;
	    //    Move_Character(_wolf,"Right",1,1);
	    //break;
	    //case 2:
	    //    state += 1;
	    //    alarm[0] = 30;
	    //break;
	    //case 3:
	    //    state += 1;
	    //    Move_Character(_wolf,"Right",1,1);
	    //break;
	    //case 4:
	    //    state += 1;
	    //    alarm[0] = 30;
	    //break;
	    //case 5:
	    //    state += 1;
	    //    Move_Character(_wolf,"Up",1,1);
	    //break;
	    //case 6:
	    //    state += 1;
	    //    alarm[0] = 30;
	    //break;
	    //case 7:
	    //    state += 1;
	    //    Move_Character(_wolf,"Up",1,1);
	    //break;
	    //case 8:
	    //    state += 1;
	    //    alarm[0] = 30;
	    //break;
	    //case 9:
	    //    state += 1;
	    //    Move_Character(_jason,"Right",2,2);
	    //break;
	    //case 10:
	    //    state += 1;
	    //    if(_ciera != noone){
	    //        Move_Character(_ciera,"Right",1,2);
	    //    }
	    //    else{
	    //        event_perform(ev_other,ev_user0);
	    //    }
	    //break;
	    //case 11:
	    //    state += 1;
	    //    if(_max != noone){
	    //        Move_Character(_max,"Right",1,2);
	    //    }
	    //    else{
	    //        event_perform(ev_other,ev_user0);
	    //    }
	    //break;
	    //case 12:
	    //    state += 1;
	    //    Face_Direction(_wolf,"Left");
	    //    Perform_Jump(_wolf,2);
	    //    Play_Music(bgm_Dont_Stop_Fighting,"Fade_To_Next",250,0);
	    //break;
	    //case 13:
	    //    state += 1;
	    //    Move_Character(_wolf,"Right",5,6,"Right",.5);
	    //break;
	    //case 14:
	    //    state += 1;
	    //    Move_Character(_wolf,"Up",1,6,"Up",.5);
	    //break;
	    //case 15:
	    //    state += 1;
	    //    Face_Direction(_wolf,"Left");
	    //    Shudder(_wolf);
	    //break;
	    //case 16:
	    //    state += 1;
	    //    Create_Dialogue(noone,sfx_Dialogue07,"Grrrrr.",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 17:
	    //    state += 1;
	    //    if(_max != noone){
	    //        Shudder(_max);
	    //    }
	    //    else{
	    //        event_perform(ev_other,ev_user0);
	    //    }
	    //break;
	    //case 18:
	    //    state += 1;
	    //    if(_max = noone){
	    //        _lookup = "Global";
	    //        _max = 1;
	    //    }
	    //    Create_Character_Dialogue(_lookup,_max,"Hey look!^ It's a wolf!",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 19:
	    //    state += 1;
	    //    if(_ciera = noone){
	    //        _lookup = "Global";
	    //        _ciera = 2;
	    //    }
	    //    Create_Character_Dialogue(_lookup,_ciera,"Don't they have a bounty on those right now?",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 20:
	    //    state += 1;
	    //    Nod_Head(_jason);
	    //break;
	    //case 21:
	    //    state += 1;
	    //    Create_Character_Dialogue("Local",_jason,"That's true,^ and we could use some gold,^ but wolves are pack hunters.% It might be a bit wiser to sneak around them.% As long as we don't get too close to their den,^ we should be fine.",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 22:
	    //    state += 1;
	    //    if(_max != noone){
	    //        Shudder(_max);
	    //    }
	    //    else{
	    //        event_perform(ev_other,ev_user0);
	    //    }
	    //break;
	    //case 23:
	    //    state += 1;
	    //    if(_max = noone){
	    //        _lookup = "Global";
	    //        _max = 1;
	    //    }
	    //    Create_Character_Dialogue(_lookup,_max,"Psh.^ Where's the fun in that?",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 24:
	    //    state += 1;
	    //    Shake_Head(_jason);
	    //break;
	    //case 25:
	    //    state += 1;
	    //    Create_Character_Dialogue("Local",_jason,"Well whatever the case,^ we better decide quick!",id,true,true);//portrait, voice, message,object,arrow,pan
	    //break;
	    //case 26:
	    //    state += 1;
	    //    _jason.cutscene_mode = false;
	    //    _wolf.cutscene_mode = false;
	    //    Face_Direction(_wolf,"Down");
	    //    Face_Direction(_jason,"Down");
        
	    //    if(_max != noone){
	    //        _max.cutscene_mode = false;
	    //        Face_Direction(_max,"Down");
	    //    }
	    //    if(_ciera != noone){
	    //        _ciera.cutscene_mode = false;
	    //        Face_Direction(_ciera,"Down");
	    //    }
        
	    //    Execute_Battle_Event("Start_New_Turn");
	    //    global.Story_State += 1;
	    //    instance_destroy();
	    //break;
	}



}
