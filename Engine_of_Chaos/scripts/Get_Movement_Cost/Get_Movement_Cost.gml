function Get_Movement_Cost() {
	var _terrain = argument[0];
	var _movement_type = argument[1];

	switch(_terrain){
	    case "Free": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1;
	            case "Horse": return 1;
	            case "Fast": return 1;
	            case "Tires": return 1;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 1;
	            case "Amphibious": return 1;
	            default: return 1;
	        }
	    break;
	    case "Path": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1;
	            case "Horse": return 1;
	            case "Fast": return 1;
	            case "Tires": return 1;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1;
	            default: return 1;
	        }
	    break;
	    case "Plains": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1;
	            case "Horse": return 1;
	            case "Fast": return 1;
	            case "Tires": return 1;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1;
	            default: return 1;
	        }
	    break;
	    case "Forest": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 2;
	            case "Horse": return 2.5;
	            case "Fast": return 1;
	            case "Tires": return 1.5;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 2;
	            default: return 1;
	        }
	    break;
	    case "Overgrowth": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1.5;
	            case "Horse": return 1.5;
	            case "Fast": return 1;
	            case "Tires": return 1;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1.5;
	            default: return 1;
	        }
	    break;
	    case "Hills": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1.5;
	            case "Horse": return 2.5;
	            case "Fast": return 1;
	            case "Tires": return 1.5;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1.5;
	            default: return 1;
	        }
	    break;
	    case "Mountain": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 1;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 1;
	        }
	    break;
	    case "Water": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 1;
	            case "Amphibious": return 1;
	            default: return 1;
	        }
	    break;
	    case "Sand": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1.5;
	            case "Horse": return 2.5;
	            case "Fast": return 2;
	            case "Tires": return 1.5;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1.5;
	            default: return 1;
	        }
	    break;
	    case "Block": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 0;
	            case "Horse": return 0;
	            case "Fast": return 0;
	            case "Tires": return 0;
	            case "Flying": return 0;
	            case "Hover": return 0;
	            case "Aquatic": return 0;
	            case "Amphibious": return 0;
	            default: return 1;
	        }
	    break;
	    case "City": 
	        switch(_movement_type){
	            case "Cursor": return 1;
	            case "Free": return 1;
	            case "Foot": return 1;
	            case "Horse": return 1;
	            case "Fast": return 1;
	            case "Tires": return 1;
	            case "Flying": return 1;
	            case "Hover": return 1;
	            case "Aquatic": return 0;
	            case "Amphibious": return 1;
	            default: return 1;
	        }
	    break;
	}

	return 0;



}
