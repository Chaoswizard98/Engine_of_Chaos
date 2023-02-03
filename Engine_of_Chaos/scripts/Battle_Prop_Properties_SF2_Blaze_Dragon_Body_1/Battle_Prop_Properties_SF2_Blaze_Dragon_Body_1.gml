function Battle_Prop_Stats_SF2_Blaze_Dragon_Body_1(_stat){
	var _sprite = spr_SF2_Blaze_Dragon_2;
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

function Battle_Prop_Loop_Event_SF2_Blaze_Dragon_Body_1(_prop){
	with(_prop){
		var _previous = x;
		x_pos = lerp(x_pos,obj_following.x_pos,.2);
		y_pos = lerp(y_pos,obj_following.y_pos,.2);

		if(_previous < x_pos){
			mirror = -1;
		}
		else{
			mirror = 1;	
		}
	}
}