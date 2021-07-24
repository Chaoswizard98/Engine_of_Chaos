function Set_Adjacent_Room() {
	var _direction = argument[0];
	var _room = argument[1];
	var _transition_type = "Screen_Fade";
	var _tile = "Egress";

	if(argument_count > 2){
	    _transition_type = argument[2];
	}
	if(argument_count > 3){
	    _tile = argument[3];
	}

	switch(_direction){
	    case "Up": global.Adjacent_Room[0] = _room; global.Adjacent_Room_Transition[0] = _transition_type; global.Default_Tile[0] = _tile; break;
	    case "Down": global.Adjacent_Room[1] = _room; global.Adjacent_Room_Transition[1] = _transition_type; global.Default_Tile[1] = _tile; break;
	    case "Left": global.Adjacent_Room[2] = _room; global.Adjacent_Room_Transition[2] = _transition_type; global.Default_Tile[2] = _tile; break;
	    case "Right": global.Adjacent_Room[3] = _room; global.Adjacent_Room_Transition[3] = _transition_type; global.Default_Tile[3] = _tile; break;
	}




}
