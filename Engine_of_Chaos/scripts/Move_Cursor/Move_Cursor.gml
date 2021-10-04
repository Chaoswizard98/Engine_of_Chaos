function Move_Cursor(_destination_x,_destination_y,_direction,_speed){
	if(Destination_Blocked(_destination_x,y,movement_type,id,"Cursor")){//if destination is blocked
	    _destination_x = x;
	}
	if(Destination_Blocked(x,_destination_y,movement_type,id,"Cursor")){//if destination is blocked
	    _destination_y = y;
	}

	if((_destination_x != x) || (_destination_y != y)){//if we should move,
	    if(!Destination_Blocked(_destination_x,_destination_y,movement_type,id,"Cursor")){//if destination isnt blocked
	        moving = true;// Lets start moving
	        move_speed = _speed;//set speed to whatever the player's walk speed is
	        move_timer = global.Tile_Size;// Ready moveTimer for countdown
	        speed_x = -round(x-_destination_x)/(global.Tile_Size/move_speed);
	        speed_y = -round(y-_destination_y)/(global.Tile_Size/move_speed);
	    }
	}
}