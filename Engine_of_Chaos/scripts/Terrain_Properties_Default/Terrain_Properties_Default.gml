function Get_Terrain_Stats_Default(_movement_type,_stat){
	//=============
	//Default Stats
	//=============
	var _sprite = spr_Terrain_Free;
	var _background_sprite = spr_Battle_Background_Default;
	var _foreground_sprite = spr_Blank_Sprite;
	var _movement_cost = 1;
	var _land_effect = 0;
	
	//============
	//Return Stats
	//============
	switch(_stat){
		case "Sprite": return _sprite; break;
		case "Background_Sprite": return _background_sprite; break;	
		case "Foreground_Sprite": return _foreground_sprite; break;	
		case "Movement_Cost": return _movement_cost; break;	
		case "Land_Effect": return _land_effect; break;	
	}
}