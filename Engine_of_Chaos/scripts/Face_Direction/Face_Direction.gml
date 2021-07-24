function Face_Direction() {
	//tells the object passed in to look in a direction
	switch(string(argument[1])){
	    case "Right": argument[0].direction = 0; break;
	    case "Up": argument[0].direction = 90; break;
	    case "Left": argument[0].direction = 180; break;
	    case "Down": argument[0].direction = 270; break;
    
	    case "0": argument[0].direction = 0; break;
	    case "90": argument[0].direction = 90; break;
	    case "180": argument[0].direction = 180; break;
	    case "270": argument[0].direction = 270; break;
	}



}
