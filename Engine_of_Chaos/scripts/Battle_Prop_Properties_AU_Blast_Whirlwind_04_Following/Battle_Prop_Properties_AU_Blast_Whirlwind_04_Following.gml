function Battle_Prop_Stats_AU_Blast_Whirlwind_04_Following(_stat){
	var _sprite = spr_AU_Blast_Whirlwind_04;
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

function Battle_Prop_Loop_Event_AU_Blast_Whirlwind_04_Following(_prop){
	if(instance_exists(obj_following)){
		with(_prop){
			x_pos = lerp(x_pos,obj_following.x_pos,.1);
		}
	}
}