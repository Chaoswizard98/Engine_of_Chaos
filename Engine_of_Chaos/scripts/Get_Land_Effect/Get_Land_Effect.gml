function Get_Land_Effect() {
	var _terrain = argument[0];
	var _movement_type = argument[1];

	switch(_terrain){
	    case "Forest": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return .30;
	            case "Horse": return .30;
	            case "Fast": return .30;
	            case "Tires": return .30;
	            case "Flying": return 0;
	            case "Hover": return .30;
	            case "Aquatic": return 0;
	            case "Amphibious": return .30;
	            default: return 0;
	        }
	    break;
	}

	return 0;



}
