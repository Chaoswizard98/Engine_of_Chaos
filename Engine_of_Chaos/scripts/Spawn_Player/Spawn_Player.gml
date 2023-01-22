function Spawn_Player(_character_ID,_location){
	var _this = noone;
	var _x_pos = 0;
	var _y_pos = 0;
	var _direction = "Down";
	var _allow_interaction = true;
	var _cutscene_mode = false;
	var _movement_script = "none";
	//var _loading_game = false;

	if(instance_exists(obj_Room_Transition_Controller)){//if room transition controller exists
	    with(obj_Room_Transition_Controller){//spawn player based on controller settings
	        _character_ID = player_ID;//Change default character ID to the one we remembered.
	        switch(transition_type){
	            case "Overworld"://Overworld / walked off screen
	                _allow_interaction = false;
	                _cutscene_mode = true;
	                _direction = pan_direction;
	                _movement_script = "Character_Movement_Overworld_Transition";
	                with(obj_Character){//disable movement for ALL characters (otherwise they move while transition is playing and appear to teleport)
	                    cutscene_mode = true;//set them to cutscene mode (so they dont run event code)
	                }
	                switch(pan_direction){
	                    case "Up": _x_pos = previous_x; _y_pos = room_height; break;
	                    case "Down": _x_pos = previous_x; _y_pos = -global.Tile_Size; break;
	                    case "Left": _x_pos = room_width; _y_pos = previous_y; break;
	                    case "Right": _x_pos = -global.Tile_Size; _y_pos = previous_y; break;
	                }
	            break;
	            case "Load_Game":
	                _allow_interaction = false;
	                _cutscene_mode = false;
	                //_loading_game = true;
	                Create_Screen_Fade(c_black,1,0,.04,"in",id);//color, start, end, speed, direction, object
	                ini_open("Save_Slot_"+string(global.Save_Slot)+".sav");
	                _character_ID = ini_read_string("Player_Data","Character_ID","Default");
	                _x_pos = ini_read_real("Player_Data","X",0);
	                _y_pos = ini_read_real("Player_Data","Y",0);
	                _direction = ini_read_real("Player_Data","Direction",270);
	                ini_close();
	            break;
	            default://Screen_Fade
	                _allow_interaction = false;
	                _cutscene_mode = false;
	                Create_Screen_Fade(c_black,1,0,.04,"in",id);//color, start, end, speed, direction, object
	                with(obj_Start_Location){
	                    if(tile_ID = obj_Room_Transition_Controller.tile_ID){
	                        _x_pos = x;
	                        _y_pos = y;
	                        _direction = start_direction;
	                        break;
	                    }
						else if(obj_Room_Transition_Controller.action = "Restart"){
							_x_pos = obj_Room_Transition_Controller.previous_x;
	                        _y_pos = obj_Room_Transition_Controller.previous_y;
						}
	                }
	            break;
	        }
	    }
	}
	else{//No set transition, spawn on default egress tile
	    _allow_interaction = true;
	    _cutscene_mode = false;
	    Create_Screen_Fade(c_black,1,0,.04,"in",obj_Screen_Fade_Controller);//color, start, end, speed, direction, object
	    with(obj_Start_Location){
	        if(tile_ID = _location){
	            _x_pos = x;
	            _y_pos = y;
	            _direction = start_direction;
	            break;
	        }
	    }
	}

	_this = Create_Player(_x_pos,_y_pos,_direction,_character_ID,_allow_interaction,_cutscene_mode,_movement_script);

	if(instance_exists(obj_Room_Transition_Controller)){
	    obj_Room_Transition_Controller.current_object = _this;
	}

	return _this;
}