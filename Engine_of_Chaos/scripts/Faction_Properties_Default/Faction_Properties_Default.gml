function Get_Faction_Stats_Default(_stat,_target_faction = "none"){
	var _minimap_sprite = spr_Minimap_White;
	var _relation = "Ignore";
	var _max_battle_party_size = 12;
	
	switch(_stat){
	    case "Minimap_Sprite": return _minimap_sprite; break;
		case "Max_Battle_Party_Size": return _max_battle_party_size; break;
	    case "Relation": return _relation; break;
	}
}