function Battle_Prop_Stats_SF2_Explosion_Large(_stat){
	var _sprite = spr_SF2_Explosion_Large;
	var _animation_speed = .25;
	var _draw_location = "Highest";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}