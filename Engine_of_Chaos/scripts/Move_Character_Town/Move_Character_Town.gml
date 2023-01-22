function Move_Character_Town(_x,_y,_direction,_tiles,_speed,_animation_speed,_looking = _direction,_ignore_stairs = false) {
	Face_Direction(id,_looking);//tells character to look in the set direction
	movement_iterations = _tiles;
	
	if((_tiles < 1)&&(_tiles > 0)){//If we're moving part of a tile (during a cutscene)
	    switch(_direction){
	        case "Up": _y = y-(global.Tile_Size*_tiles); break;
	        case "Down": _y = y+(global.Tile_Size*_tiles); break;
	        case "Left": _x = x-(global.Tile_Size*_tiles); break;
	        case "Right": _x = x+(global.Tile_Size*_tiles); break;
	    }
	}

	var stair = noone;//stair object pointer

	if(_direction = "Left" && !_ignore_stairs){//if we're walking left, and there's a stair object there
	    stair = instance_position(_x,_y,obj_Stair_Left_Parent);
	}
	else if(_direction = "Right" && !_ignore_stairs){//if we're walking right, and there's a stair object there
	    stair = instance_position(_x,_y,obj_Stair_Right_Parent);
	}

	if(stair != noone){//if we are walking into a stair object
	    _y = _y + (global.Tile_Size*stair.delta_y);//set projected y to new y value
	}
	if(Destination_Blocked(_x,_y,Get_Character_Movement_Type("Local",id,"Total"),id,"Character")&&(!cutscene_mode)){//if blocked, and we arent in a cutscene
		if(global.In_Battle && can_trigger_room_transition && Edge_Of_Room(_x,_y)){//if we're in battle and can trigger a room transition
	        var _cutscene = Get_Room_Stats("Cutscene",_direction);
	        if(_cutscene != "none"){
	            allow_interaction = false;//prevent player interaction
				Start_Cutscene(_cutscene,id,_direction);
	        }
	    }
	    else{
	        if((global.Player = id) && (Edge_Of_Room(_x,_y))){//if we're controlling the player, and at edge of room,
	            var _cutscene = Get_Room_Stats("Cutscene",_direction);
	            if(_cutscene != "none"){
	                allow_interaction = false;//prevent player interaction
					Start_Cutscene(_cutscene,id);
	            }
	            else{
	                allow_interaction = false;//prevent player interaction
	                Room_Transfer(id,"Overworld",_direction);
	            }
	        }
	        if(is_npc){//if they are an NPC, reset event timer
	            event_timer = event_cooldown;//reset event timer
	        }
	    }
	}
	//===============
	//Normal Movement
	//===============
	else{//normal movement
	    if(global.In_Battle && !cutscene_mode){
	        Play_Sound(sfx_Walk);
	    }
	    moving = true;// Lets start moving
	    move_speed = _speed;//set speed to whatever the player's walk speed is
	    move_timer = global.Tile_Size;// Ready moveTimer for countdown
	    speed_x = -round(x-_x)/(global.Tile_Size/move_speed);
	    speed_y = -round(y-_y)/(global.Tile_Size/move_speed);
	    image_speed = _animation_speed;//set walk animation speed
	    projected_x = _x;//set projected x
	    projected_y = _y;//set projected y
	    move_direction = _direction;
	}
}