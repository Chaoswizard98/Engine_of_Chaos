function Battle_Prop_Stats_SF2_Prism_Flower_Charge(_stat){
	var _sprite = spr_SF2_Prism_Flower_Charge;
	var _animation_speed = 0;
	var _draw_location = "Highest";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}