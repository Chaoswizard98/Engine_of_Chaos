function Move_Character_Town() {
	var new_move_speed, new_animation_speed, destination_x,destination_y,_direction, stair,_iterations;

	destination_x = argument[0];//projected x location
	destination_y = argument[1];//projected y location
	_direction = argument[2];//direction to face the character
	movement_iterations = argument[3];//number of times we move
	new_move_speed = argument[4];//speed to move character
	new_animation_speed = argument[5];//speed of animation
	if(argument_count > 6){
	    Face_Direction(id,argument[6]);//tells character to look in the set direction
	}

	if((movement_iterations < 1)&&(movement_iterations > 0)){//If we're moving part of a tile (during a cutscene)
	    switch(_direction){
	        case "Up": destination_y = y-(global.Tile_Size*movement_iterations); break;
	        case "Down": destination_y = y+(global.Tile_Size*movement_iterations); break;
	        case "Left": destination_x = x-(global.Tile_Size*movement_iterations); break;
	        case "Right": destination_x = x+(global.Tile_Size*movement_iterations); break;
	    }
	}

	stair = noone;//stair object pointer

	if(_direction = "Left"){//if we're walking left, and there's a stair object there
	    stair = instance_position(destination_x,destination_y,obj_Stair_Left_Parent);
	}
	else if(_direction = "Right"){//if we're walking right, and there's a stair object there
	    stair = instance_position(destination_x,destination_y,obj_Stair_Right_Parent);
	}

	if(stair != noone){//if we are walking into a stair object
	    destination_y = destination_y + (global.Tile_Size*stair.delta_y);//set projected y to new y value
	}
	if(Destination_Blocked(destination_x,destination_y,Get_Character_Movement_Type("Local",id,"Total"),id,"Character")&&(!cutscene_mode)){//if blocked, and we arent in a cutscene
	    if(global.In_Battle && can_trigger_room_transition && Edge_Of_Room(destination_x,destination_y)){//if we're in battle and can trigger a room transition
	        var _room = noone;
	        switch(_direction){
	            case "Up": _room = global.Adjacent_Room[0]; break;
	            case "Down": _room = global.Adjacent_Room[1]; break;
	            case "Left": _room = global.Adjacent_Room[2]; break;
	            case "Right": _room = global.Adjacent_Room[3]; break;
	        }
	        if(_room != noone){
	            allow_interaction = false;//Block Movement
	            Create_Cutscene_Controller("Retreat_From_Battle_Overworld","Battle_Cutscene",0,id,_direction);//confirmation cutscene
	        }
	    }
	    else{
	        if((global.Player = id) && (Edge_Of_Room(destination_x,destination_y))){//if we're controlling the player, and at edge of room,
	            var _cutscene = "none";
	            _cutscene = Get_Room_Transfer_Cutscene();
	            if(_cutscene != "none"){
	                allow_interaction = false;//prevent player interaction
	                Create_Cutscene_Controller(_cutscene,"Cutscene",0,id);
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
	    move_speed = new_move_speed;//set speed to whatever the player's walk speed is
	    move_timer = global.Tile_Size;// Ready moveTimer for countdown
	    speed_x = -round(x-destination_x)/(global.Tile_Size/move_speed);
	    speed_y = -round(y-destination_y)/(global.Tile_Size/move_speed);
	    image_speed = new_animation_speed;//set walk animation speed
	    projected_x = destination_x;//set projected x
	    projected_y = destination_y;//set projected y
	    move_direction = _direction;
	}



}
