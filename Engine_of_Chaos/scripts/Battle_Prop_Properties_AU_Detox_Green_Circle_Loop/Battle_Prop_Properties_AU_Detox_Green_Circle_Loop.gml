function Battle_Prop_Stats_AU_Detox_Green_Circle_Loop(_stat){
	var _sprite = spr_AU_Detox_Green_Circle_Loop;
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

function Battle_Prop_Animation_Event_AU_Detox_Green_Circle_Loop(_prop){
	with(_prop){
		if(current_iteration = 4){
			var _this;
			_this = Create_Battle_Cutscene_Prop("AU_Detox_Green_Circle_End",_prop.x_pos,_prop.y_pos,0,_prop.mirror,false,false,noone);
			
			instance_destroy(_prop);
		}
	}
}