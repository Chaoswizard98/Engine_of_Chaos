function Battle_Prop_Stats_AU_Freeze_Shard_Small(_stat){
	var _sprite = spr_AU_Freeze_Shard_Small;
	var _animation_speed = .25;
	var _draw_location = "Highest";
	
	switch(_stat){
		case "Sprite": return _sprite; break;	
		case "Animation_Speed": return _animation_speed; break;
		case "Draw_Location": return _draw_location; break;
	}
}