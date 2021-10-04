function Get_Terrain_Stats_Overgrowth(_movement_type,_stat){
	//=============
	//Default Stats
	//=============
	var _sprite = spr_Terrain_Overgrowth;
	var _background_sprite = spr_Battle_Background_Overgrowth;
	var _foreground_sprite = spr_Battle_Foreground_Overgrowth;
	var _movement_cost = 1;
	var _land_effect = 0;
	
	//=======================
	//Movement Specific Stats
	//=======================
	switch(_movement_type){
	    case "Cursor": _movement_cost = 1; _land_effect = 0; break;
	    case "Free": _movement_cost = 1; _land_effect = 0; break;
	    case "Foot": _movement_cost = 1.5; _land_effect = .30; break;
	    case "Horse": _movement_cost = 1.5; _land_effect = .30; break;
	    case "Fast": _movement_cost = 1; _land_effect = .30; break;
	    case "Tires": _movement_cost = 1; _land_effect = .30; break;
	    case "Flying": _movement_cost = 1; _land_effect = 0; break;
	    case "Hover": _movement_cost = 1; _land_effect = .30; break;
	    case "Aquatic": _movement_cost = 0; _land_effect = 0; break;
	    case "Amphibious": _movement_cost = 1.5; _land_effect = .30; break;
	}
	
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