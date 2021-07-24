function Move_Cursor() {
	var _destination_x = argument[0];//projected x location
	var _destination_y = argument[1];//projected y location
	var _direction = argument[2];//direction to face the character
	var _new_move_speed = argument[3];//speed to move character

	if(Destination_Blocked(_destination_x,y,movement_type,id,"Cursor")){//if destination is blocked
	    _destination_x = x;
	}
	if(Destination_Blocked(x,_destination_y,movement_type,id,"Cursor")){//if destination is blocked
	    _destination_y = y;
	}

	if((_destination_x != x) || (_destination_y != y)){//if we should move,
	    if(!Destination_Blocked(_destination_x,_destination_y,movement_type,id,"Cursor")){//if destination isnt blocked
	        moving = true;// Lets start moving
	        move_speed = _new_move_speed;//set speed to whatever the player's walk speed is
	        move_timer = global.Tile_Size;// Ready moveTimer for countdown
	        speed_x = -round(x-_destination_x)/(global.Tile_Size/move_speed);
	        speed_y = -round(y-_destination_y)/(global.Tile_Size/move_speed);
	    }
	}



}
