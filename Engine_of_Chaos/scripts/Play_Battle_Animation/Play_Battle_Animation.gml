function Play_Battle_Animation(_object,_animation,_trigger_event,_freeze_final_frame,_return_to_idle){
	var _sprite = _object.sprite_ID;

	while(_animation != Get_Battle_Cutscene_Sprite_Stats(_sprite,_animation,"Parent_Animation")){//check if it has a parent animation
	    _animation = Get_Battle_Cutscene_Sprite_Stats(_sprite,_animation,"Parent_Animation");//set to parent animation
	}

	_object.animation = _animation;

	_object.sprite_index = Get_Battle_Cutscene_Sprite_Stats(_sprite,_animation,"Sprite");
	_object.image_speed = Get_Battle_Cutscene_Sprite_Stats(_sprite,_animation,"Animation_Speed");
	_object.trigger_event = _trigger_event;
	_object.freeze_final_frame = _freeze_final_frame;
	_object.return_to_idle = _return_to_idle;

	//if we're using a build in animation (hit shake / death fade / etc.)
	if(Get_Battle_Cutscene_Sprite_Stats(_sprite,_animation,"Use_Controller_Animation")){
	    if(_animation = "Take_Hit"){//Set up take hit animation
	        Hit_Flash(_object,.125);
	        _object.hit_timer = _object.max_hit_timer;
			_object.freeze_final_frame = false;
	    }
	    else if(_animation = "Death"){//set up death animation
	        _object.end_alpha = 0;
	        _object.fade = true;
			_object.freeze_final_frame = false;
	    }
	    else if(_animation = "Appear"){//set up death animation
	        _object.end_alpha = 1;
	        _object.fade = true;
			_object.freeze_final_frame = false;
	    }
	}

	_object.current_frame = -1;//set frame to -1 so that frame 0 can trigger an event
	_object.image_index = 0;//start at frame 0
}