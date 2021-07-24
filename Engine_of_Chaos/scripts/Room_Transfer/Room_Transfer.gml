function Room_Transfer() {
	var _character = argument[0];//player trigger
	var _trigger = argument[1];//Tile, Overworld, Force
	var _transition_type = _trigger;
	var _data_1 = noone;//Extra information
	var _data_2 = noone;
	var _direction = "Down";
	var _tile_ID = "none";
	var _next_room = noone;
	var _character_ID = "none";
	var _image_index = 0;
	var _x_pos = 0;
	var _y_pos = 0;

	if(argument_count > 2){
	    _data_1 = argument[2];
	}
	if(argument_count > 3){
	    _data_2 = argument[3];
	}

	//===========================
	//Get Transition Information=
	//===========================
	switch(_trigger){
	    case "Tile"://stepped on tile
	        _transition_type = _data_1.transition_type;
	        _tile_ID = _data_1.tile_ID;
	        _next_room = _data_1.next_room;
	        _character_ID = Get_Character_ID("Local",_character,"Base");
	    break;
	    case "Overworld"://edge of room
	        _direction = _data_1;
	        _character_ID = Get_Character_ID("Local",_character,"Base");
	        _image_index = _character.image_index;
	        _x_pos = _character.x;
	        _y_pos = _character.y;
	        switch(_direction){
	            case "Up":
	                _next_room = global.Adjacent_Room[0];
	                _transition_type = global.Adjacent_Room_Transition[0];
	                _tile_ID = global.Default_Tile[0];
	            break;
	            case "Down":
	                _next_room = global.Adjacent_Room[1];
	                _transition_type = global.Adjacent_Room_Transition[1];
	                _tile_ID = global.Default_Tile[1];
	            break;
	            case "Left":
	                _next_room = global.Adjacent_Room[2];
	                _transition_type = global.Adjacent_Room_Transition[2];
	                _tile_ID = global.Default_Tile[2];
	            break;
	            case "Right":
	                _next_room = global.Adjacent_Room[3];
	                _transition_type = global.Adjacent_Room_Transition[3];
	                _tile_ID = global.Default_Tile[3];
	            break;
	        }
	        if(global.In_Battle){
	            _transition_type = "Screen_Fade";
	        }
	    break;
	    case "Force"://Forced room chance via cutscene or other method.
	        _next_room = _data_1;
	        _character_ID = _character;
	        _transition_type = "Screen_Fade";
	        _tile_ID = _data_2;
	    break;
	    case "Load_Game":
	        _next_room = _data_1;
	        _transition_type = "Load_Game";
	    break;
	}


	//=====================
	//Room Transition Code=
	//=====================
	if(_next_room != noone){//if we go to next room,
	    instance_create_layer(0,0,"Room_Transition_Instance_Layer",obj_Room_Transition_Controller);
	    with(obj_Room_Transition_Controller){
	        if((_trigger != "Force")&&(_transition_type = "Screen_Fade")){
	            Play_Sound(sfx_Stair);
	        }
	        next_room = _next_room;
	        transition_type = _transition_type;
	        pan_direction = _direction;
	        player_ID = _character_ID;
	        tile_ID = _tile_ID;
	        state = "Start";
	        player_direction = _direction;
	        player_image_index = _image_index;
	        previous_x = _x_pos;
	        previous_y = _y_pos;
	        event_perform(ev_other,ev_user0);
	    }
	}
	else{//otherwise, break and allow player movement
	    if(instance_exists(_character)){
	        if(Object_Is_Character(_character)){
	            _character.allow_interaction = true;
	        }
	    }
	}



}
