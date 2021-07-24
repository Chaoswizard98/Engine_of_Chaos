function Battle_Cutscene_Character_Animation_Noah() {
	var _object = argument[0];

	with(_object){
	    if(animation = "Melee_Attack"){
	        if(current_frame = 0){
	            Play_Sound(sfx_Menu_Swish);
	        }
	        else if(current_frame = 3){//hit frame(s)
	            var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
	            if(_target.on_screen){
	                if(_target.blocked_attack){
	                    Play_Sound(sfx_Blast);
	                    Play_Battle_Animation(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target),"Block",false,false,true);
	                }
	                else{
	                    Play_Sound(sfx_Hit);
	                    Play_Battle_Animation(Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target),"Take_Hit",false,false,true);
	                }
	            }
	        }
	        else if(current_frame = 11){
	            Play_Sound(sfx_Critical);
	        }
	        else if(current_frame = 18){
	            Play_Sound(sfx_Boom);
	            event_perform(ev_other,ev_user0);//Ping Cutscene Controller
	        }
	        else if(current_frame = 21){//pause frame
	            Pause_Battle_Animation(_object);
	        }
	        else if(current_frame = 22){
	            Play_Sound(sfx_Blaze_Fire_Start);
	        }
	        else if(current_frame >= image_number-1){//final frame
	            event_perform(ev_other,ev_user0);//Ping Cutscene Controller
	            Play_Battle_Animation(_object,"Idle",false,false,false);
	        }
	    }
	    else if(animation = "Block"){
	        if(current_frame = 0){
	            //Play_Sound(sfx_Menu_Swish);
	        }
	        else if(current_frame = 4){//hit frame(s)
	            //Play_Sound(sfx_Critical);
	            Pause_Battle_Animation(_object);
	            event_perform(ev_other,ev_user0);//Ping Cutscene Controller
	        }
	        else if(current_frame >= image_number-1){//final frame
	            event_perform(ev_other,ev_user0);//Ping Cutscene Controller
	            Play_Battle_Animation(_object,"Idle",false,false,false);
	        }
	    }
	    else{
	        Battle_Cutscene_Character_Animation_Default(_object);
	    }
	}



}
