function Teleport_Tile_Pathfinding_Fade() {
	var _teleport_tile = noone;

	switch(state){
	    case 0:
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color, start, end, speed, direction, object
	        _teleport_tile = instance_position(round(other_trigger.x),round(other_trigger.y),obj_Teleport_Tile);
	        _teleport_tile.call_trigger = false;
	        other_trigger.pathfinding = false;//no longer pathfinding
	        if(Object_Is_Character(other_trigger)){
	            other_trigger.image_speed = other_trigger.idle_animation_speed;//return to idle speed
	        }
	        Play_Sound(sfx_Stair);
	        state += 1;
	    break;
	    case 1:
	        _teleport_tile = instance_position(round(other_trigger.x),round(other_trigger.y),obj_Teleport_Tile);
	        _teleport_tile.linked_tile.call_trigger = false;
	        other_trigger.x = _teleport_tile.linked_tile.x;//set object coordinates to destination coordinates
	        other_trigger.y = _teleport_tile.linked_tile.y;
	        other_trigger.pathfind_loop = false;//disable loop
	        Center_Camera();
	        AStar_free();//Clear the path from memory.
	        Continue_Screen_Fade(0,.04,"in",id);//fade back in
	        state += 1;
	    break;
	    case 2:
	        if(other_trigger.object_index = obj_Cursor){//if this is the cursor object,
	            Move_Cursor_To_Target(Get_Current_Turn(),other_trigger.pathfinding_end_action);//continue path
	        }
	        else{//otherwise, this is a player
	            if(other_trigger.pathfinding_end_action = "Walking_To_Start_Location"){
	                Walk_To_Start_Position(other_trigger);//continue path
	            }
	            else{
	                Walk_To_Location(other_trigger,other_trigger.ai_destination_x,other_trigger.ai_destination_y,other_trigger.pathfinding_end_action);
	            }
	        }
	        state += 1;
	        instance_destroy();
	    break;
	}



}
