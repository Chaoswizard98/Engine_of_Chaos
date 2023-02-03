function Battle_Prop_Stats_SF2_Blast_Tornado_Dust(_stat){
	var _sprite = spr_SF2_Tornado_Dust;
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