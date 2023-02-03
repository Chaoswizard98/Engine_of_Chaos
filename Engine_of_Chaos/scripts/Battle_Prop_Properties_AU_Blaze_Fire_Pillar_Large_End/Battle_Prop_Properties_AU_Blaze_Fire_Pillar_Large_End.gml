function Battle_Prop_Stats_AU_Blaze_Fire_Pillar_Large_End(_stat){
	var _sprite = spr_AU_Blaze_Fire_Pillar_Large_End;
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

//function Battle_Prop_Animation_Event_AU_Blaze_Fire_Pillar_Large_End(_prop){
//	with(_prop){
//	    if(current_frame = 1){
//	        audio_stop_sound(sfx_Fire_Pillar_01);
//	        Play_Sound(sfx_Fire_Pillar_01);
//	        Shake_Battle_Cutscene(0,4,4);
//	        Flash_Battle_Cutscene(c_red,2);
//	    }
//	}
//}