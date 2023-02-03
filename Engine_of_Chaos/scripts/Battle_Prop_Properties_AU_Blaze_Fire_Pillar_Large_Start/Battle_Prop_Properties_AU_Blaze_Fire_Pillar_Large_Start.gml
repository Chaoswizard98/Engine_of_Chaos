function Battle_Prop_Stats_AU_Blaze_Fire_Pillar_Large_Start(_stat){
	var _sprite = spr_AU_Blaze_Fire_Pillar_Large_Start;
	var _animation_speed = .5;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Animation_Event_AU_Blaze_Fire_Pillar_Large_Start(_prop){
	with(_prop){
	    if(current_frame = 1){
	        audio_stop_sound(sfx_Fire_Pillar_01);
	        Play_Sound(sfx_Fire_Pillar_01);
	        Shake_Battle_Cutscene(0,4,4);
	        //Flash_Battle_Cutscene(c_red,2);
	    }
		else if(current_iteration = 2){
			var _this;
			_this = Create_Battle_Cutscene_Prop("AU_Blaze_Fire_Pillar_Large_Loop",_prop.x_pos,_prop.y_pos,0,_prop.mirror,false,false,noone);
			_this.number_of_iterations = 3;
			
			instance_destroy(_prop);
		}
	}
}