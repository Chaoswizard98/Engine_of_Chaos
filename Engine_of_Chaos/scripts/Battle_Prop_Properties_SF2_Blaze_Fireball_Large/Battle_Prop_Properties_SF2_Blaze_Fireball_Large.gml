function Battle_Prop_Stats_SF2_Blaze_Fireball_Large(_stat){
	var _sprite = choose(spr_SF2_Blaze_Fireball_Large_1,spr_SF2_Blaze_Fireball_Large_2);
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

function Battle_Prop_Movement_End_Event_SF2_Blaze_Fireball_Large(_prop){
	Create_Battle_Cutscene_Prop("SF2_Blaze_Explosion_Large",_prop.x_pos,_prop.y_pos,0,_prop.mirror,false,false,sfx_Boom);
	Shake_Battle_Cutscene(0,8,4);
	Flash_Battle_Cutscene(c_red,2);
	instance_destroy(_prop);
}