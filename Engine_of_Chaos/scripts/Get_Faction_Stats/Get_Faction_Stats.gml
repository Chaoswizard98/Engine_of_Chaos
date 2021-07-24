function Get_Faction_Stats() {
	var _faction = argument[0];
	var _stat = argument[1];
	var _target_faction = "none";

	if(argument_count > 2){
	    _target_faction = argument[2];
	}

	var _minimap_sprite = spr_Minimap_White;
	var _relation = "Ignore";

	switch(_faction){
	    //Player
	    case "Player": 
	        _minimap_sprite = spr_Minimap_Green;
	        switch(_target_faction){
	            case "Player": case "Player_Muddled": //Allies
	                _relation = "Ally";
	                break;
	            case "Enemy": case "Player2"://Enemies
	                _relation = "Enemy";
	                break;
	            default: _relation = "Ignore"; break;//Default to ignore
	        }
	    break;
	    //Player2
	    case "Player2": _minimap_sprite = spr_Minimap_Blue;
	        switch(_target_faction){
	            case "Player2"://Allies
	                _relation = "Ally";
	                break;
	            case "Enemy": case "Player": //Enemies
	                _relation = "Enemy";
	                break;
	            default: _relation = "Ignore"; break;//Default to ignore
	        }
	    break;
	    //Enemy
	    case "Enemy": _minimap_sprite = spr_Minimap_Red;
	        switch(_target_faction){
	            case "Enemy":
	                _relation = "Ally";
	            break;
	            case "Player": case "Player2":
	                _relation = "Enemy";
	            break;
	    }
	    break;
	    //Default
	    default: _minimap_sprite = spr_Minimap_White; break;
	}

	switch(_stat){
	    case "Minimap_Sprite": return _minimap_sprite break;
	    case "Relation": return _relation break;
	    default: return 0;
	}




}
