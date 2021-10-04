function Get_Faction_Stats_Player(_stat,_target_faction = "none"){
	var _minimap_sprite = spr_Minimap_Green;
	var _relation = "Ignore";
	var _max_battle_party_size = 12;
	
	switch(_target_faction){
		//Allies
	    case "Player": _relation = "Ally"; break;
		
		//Enemies
	    case "Enemy": _relation = "Enemy"; break;
	    
		//Default to ignore
	    default: _relation = "Ignore"; break;
	}
	
	switch(_stat){
	    case "Minimap_Sprite": return _minimap_sprite; break;
		case "Max_Battle_Party_Size": return _max_battle_party_size; break;
	    case "Relation": return _relation; break;
	}
}