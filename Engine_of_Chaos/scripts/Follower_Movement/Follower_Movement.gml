function Follower_Movement(_x_offset,_y_offset) {
	_y_offset = 0;//This one tends to cause issues, for now, I force it to 0. I'll fix it later

	switch(object_following.direction){
	    case 0:
	        speed_x = -round(x-(object_following.previous_x-(global.Tile_Size*_y_offset*-1)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        speed_y = -round(y-(object_following.previous_y-(global.Tile_Size*_x_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        projected_x = object_following.previous_x-(global.Tile_Size*_y_offset*-1);//set projected x to target's previous location
	        projected_y = object_following.previous_y-(global.Tile_Size*_x_offset);//set projected y to target's previous location
	    break;
	    case 90:
	        speed_x = -round(x-(object_following.previous_x-(global.Tile_Size*_x_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        speed_y = -round(y-(object_following.previous_y-(global.Tile_Size*_y_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        projected_x = object_following.previous_x-(global.Tile_Size*_x_offset);//set projected x to target's previous location
	        projected_y = object_following.previous_y-(global.Tile_Size*_y_offset);//set projected y to target's previous location
	    break;
	    case 180:
	        speed_x = -round(x-(object_following.previous_x+(global.Tile_Size*_y_offset*-1)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        speed_y = -round(y-(object_following.previous_y+(global.Tile_Size*_x_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        projected_x = object_following.previous_x+(global.Tile_Size*_y_offset*-1);//set projected x to target's previous location
	        projected_y = object_following.previous_y+(global.Tile_Size*_x_offset);//set projected y to target's previous location
	    break;
	    case 270:
	        speed_x = -round(x-(object_following.previous_x+(global.Tile_Size*_x_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        speed_y = -round(y-(object_following.previous_y+(global.Tile_Size*_y_offset)))/(global.Tile_Size/move_speed);//get to the target's previous location at move speed
	        projected_x = object_following.previous_x+(global.Tile_Size*_x_offset);//set projected x to target's previous location
	        projected_y = object_following.previous_y+(global.Tile_Size*_y_offset);//set projected y to target's previous location
	    break;
	}
}