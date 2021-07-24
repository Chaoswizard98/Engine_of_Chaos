function Get_Land_Effect() {
	var _terrain = argument[0];
	var _movement_type = argument[1];

	switch(_terrain){
	    case "Free": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 0;
	        }
	    break;
	    case "Path": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 0;
	        }
	    break;
	    case "Plains": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return .15;
	            case "Horse": return .15;
	            case "Fast": return .15;
	            case "Tires": return .15;
	            case "Flying": return 0;
	            case "Hover": return .15;
	            case "Aquatic": return 0;
	            case "Amphibious": return .15;
	            default: return 0;
	        }
	    break;
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
	    case "Overgrowth": 
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
	    case "Hills": 
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
	    case "Mountain": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 0;
	        }
	    break;
	    case "Water": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return .30;
	            case "Amphibious": return .30;
	            default: return 0;
	        }
	    break;
	    case "Sand": 
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
	    case "Block": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 0;
	        }
	    break;
	    case "City": 
	        switch(_movement_type){
	            case "Cursor": return 0;
	            case "Free": return 0;
	            case "Foot": return .5;
	            case "Horse": return .5;
	            case "Fast": return .5;
	            case "Tires": return .5;
	            case "Flying": return 0;
	            case "Hover": return .5;
	            case "Aquatic": return 0;
	            case "Amphibious": return .5;
	            default: return 0;
	        }
	    break;
	}

	return 0;



}
