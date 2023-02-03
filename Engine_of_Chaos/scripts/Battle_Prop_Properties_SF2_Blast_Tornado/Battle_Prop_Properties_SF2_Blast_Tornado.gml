function Battle_Prop_Stats_SF2_Blast_Tornado(_stat){
	var _sprite = spr_SF2_Tornado;
	var _animation_speed = .25;
	var _draw_location = "Foreground";
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}

function Battle_Prop_Movement_End_Event_SF2_Blast_Tornado(_prop){
	var _distance = 60;
	var _speed = 1;
	if(!_prop.loop_animation){
		instance_destroy(_prop);	
	}
	else{
		if(_prop.prop_tags[0] = "Left"){
			_prop.prop_tags[0] = "Right";
			Set_Battle_Prop_Movement(_prop,_prop.x_pos-_distance,_prop.y_pos,_speed);
		}
		else if(_prop.prop_tags[0] = "Right"){
			_prop.prop_tags[0] = "Left";
			Set_Battle_Prop_Movement(_prop,_prop.x_pos+_distance,_prop.y_pos,_speed);
		}
		else{
			_prop.prop_tags[0] = "Right";
			Set_Battle_Prop_Movement(_prop,_prop.x_pos-(_distance/2),_prop.y_pos,_speed);
		}
	}
}