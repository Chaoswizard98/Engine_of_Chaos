function Battle_Prop_Stats_AU_Blast_Green_Wind_Explosion_Dark(_stat){
	var _sprite = spr_AU_Blast_Green_Wind_Explosion_Dark;
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

function Battle_Prop_Animation_Event_AU_Blast_Green_Wind_Explosion_Dark(_prop){
	with(_prop){
	    if(current_frame = 1){
	        audio_stop_sound(sfx_Blast);
	        Play_Sound(sfx_Blast);
	    }
	}
}