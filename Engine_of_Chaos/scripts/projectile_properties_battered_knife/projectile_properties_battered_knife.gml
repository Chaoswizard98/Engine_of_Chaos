function Projectile_Stats_Battered_Knife(_stat){
	var _sprite = spr_Battered_Knife_Projectile;
	var _animation_speed = 0;
	var _movement_speed = 15;
	
	switch(_stat){
		case "Sprite": return _sprite break;
	    case "Animation_Speed": return _animation_speed break;
	    case "Movement_Speed": return _movement_speed break;
	}
}