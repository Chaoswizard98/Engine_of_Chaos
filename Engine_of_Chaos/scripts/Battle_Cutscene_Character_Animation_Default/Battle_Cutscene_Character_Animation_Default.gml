function Battle_Cutscene_Character_Animation_Default() {
	var _object = argument[0];

	with(_object){
	    if(current_frame = image_number-2){//second to last frame
	        if(freeze_final_frame){
	            image_index += image_speed;//update frame (otherwise it's behind a frame. GM Logic, index updates AFTER draw code >.>)
	            image_speed = 0;//freeze frame
	            event_perform(ev_other,ev_user0);//call cutscene controller
	        }
	    }
	    else if(current_frame >= image_number-1){//final frame
	        event_perform(ev_other,ev_user0);
	        if(return_to_idle){
	            Play_Battle_Animation(_object,"Idle",false,false,false);//return to idle
	        }
	    }
	}
}