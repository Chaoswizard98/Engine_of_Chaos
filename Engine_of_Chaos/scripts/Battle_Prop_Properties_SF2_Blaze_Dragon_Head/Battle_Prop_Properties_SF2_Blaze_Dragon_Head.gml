function Battle_Prop_Stats_SF2_Blaze_Dragon_Head(_stat){
	var _sprite = spr_SF2_Blaze_Dragon_1;
	var _animation_speed = 0;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Loop_Event_SF2_Blaze_Dragon_Head(_prop){
	with(_prop){
		var _previous = x_pos;
		x_pos = Wave(wave_x_center-75,wave_x_center+75,1.5,0);
		y_pos = Wave(wave_y_center-50,wave_y_center+50,.75,0);

		if(_previous < x_pos){
			mirror = -1;
		}
		else{
			mirror = 1;	
		}
	}
}