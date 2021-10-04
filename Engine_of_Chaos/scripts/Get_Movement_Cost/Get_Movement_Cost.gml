function Get_Movement_Cost() {
	var _terrain = argument[0];
	var _movement_type = argument[1];

	switch(_terrain){
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
	}

	return 0;



}
