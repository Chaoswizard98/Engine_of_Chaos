function Battle_Prop_Stats_SF2_Blast_Slash_Small_2(_stat){
	var _sprite = spr_SF2_Blast_Slash_2;
	var _animation_speed = .2;
	var _draw_location = "Highest";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Animation_Event_SF2_Blast_Slash_Small_2(_prop){
	if(_prop.current_frame >= 2){//final frame, start movement
		_prop.action = "Move_To_Location";
		_prop.image_index = 2;
		_prop.loop_animation = true;
		_prop.image_speed = 0;
	}
}