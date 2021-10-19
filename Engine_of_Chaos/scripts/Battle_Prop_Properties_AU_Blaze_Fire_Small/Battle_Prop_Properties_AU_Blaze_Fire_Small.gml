function Battle_Prop_Stats_AU_Blaze_Fire_Small(_stat){
	var _sprite = spr_AU_Blaze_Fire_Small;
	var _animation_speed = .25;
	var _draw_location = "Foreground";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}