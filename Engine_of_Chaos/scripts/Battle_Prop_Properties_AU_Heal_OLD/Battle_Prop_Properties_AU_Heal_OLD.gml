function Battle_Prop_Stats_AU_Heal_OLD(_stat){
	var _sprite = spr_AU_Heal;
	var _animation_speed = .5;
	var _draw_location = "Highest";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}

function Battle_Prop_Animation_Event_AU_Heal_OLD(_prop){
	with(_prop){
	    if(current_frame = 3){
	        Play_Sound(sfx_Heal_2);
	    }
	}
}