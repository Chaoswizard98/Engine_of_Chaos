function Face_Direction(_character,_direction) {
	//tells the object passed in to look in a direction
	switch(string(_direction)){
	    case "Right": _character.direction = 0; break;
	    case "Up": _character.direction = 90; break;
	    case "Left": _character.direction = 180; break;
	    case "Down": _character.direction = 270; break;
    
	    case "0": _character.direction = 0; break;
	    case "90": _character.direction = 90; break;
	    case "180": _character.direction = 180; break;
	    case "270": _character.direction = 270; break;
	}
}