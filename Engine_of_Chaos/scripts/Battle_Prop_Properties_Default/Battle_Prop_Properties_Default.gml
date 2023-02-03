function Battle_Prop_Stats_Default(_stat){
	var _sprite = spr_Blank_Sprite;
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

function Battle_Prop_Movement_End_Event_Default(_prop){
	instance_destroy(_prop);
}

function Battle_Prop_Animation_Event_Default(_prop){
	
}

function Battle_Prop_Loop_Event_Default(_prop){
	
}