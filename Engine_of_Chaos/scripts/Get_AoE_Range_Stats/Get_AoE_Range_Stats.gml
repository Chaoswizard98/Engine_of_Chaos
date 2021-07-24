function Get_AoE_Range_Stats() {
	var _formula = argument[0];
	var _stat = argument[1];

	var _allow_up = true;
	var _allow_down = true;
	var _allow_left = true;
	var _allow_right = true;
	var _allow_diagonals = false;

	switch(_formula){
	    case "Square":
	        _allow_diagonals = true;
	    break;
	    case "Up":
	        _allow_down = false;
	        _allow_left = false;
	        _allow_right = false;
	    break;
	    case "Down":
	        _allow_up = false;
	        _allow_left = false;
	        _allow_right = false;
	    break;
	    case "Left":
	        _allow_up = false;
	        _allow_down = false;
	        _allow_right = false;
	    break;
	    case "Right":
	        _allow_up = false;
	        _allow_down = false;
	        _allow_left = false;
	    break;
	}

	switch(_stat){
	    case "Allow_Up": return _allow_up; break;
	    case "Allow_Down": return _allow_down; break;
	    case "Allow_Left": return _allow_left; break;
	    case "Allow_Right": return _allow_right; break;
	    case "Allow_Diagonals": return _allow_diagonals; break;
	}



}
