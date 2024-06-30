function Battle_Prop_Stats_SF2_Blaze_Fire_Small(_stat){
	var _sprite = spr_SF2_Blaze_Fire_Small;//Sprite animation you want to play
	var _animation_speed = .2;//How fast it animates
	var _draw_location = "Foreground";//What depth it's drawn at
	var _instant_destruction = false;//immediately destroys on spell controller destruction
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
		case "Instant_Destruction": return _instant_destruction; break;
	}
}