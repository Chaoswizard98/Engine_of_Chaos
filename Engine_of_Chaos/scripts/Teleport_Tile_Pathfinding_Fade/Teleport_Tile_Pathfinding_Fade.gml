function Teleport_Tile_Pathfinding_Fade() {
	var _teleport_tile = noone;

	switch(state){
	    case 0:
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color, start, end, speed, direction, object
	        _teleport_tile = instance_position(round(npc_trigger.x),round(npc_trigger.y),obj_Teleport_Tile);
	        _teleport_tile.call_trigger = false;
	        npc_trigger.pathfinding = false;//no longer pathfinding
	        if(Object_Is_Character(npc_trigger)){
	            npc_trigger.image_speed = npc_trigger.idle_animation_speed;//return to idle speed
	        }
	        Play_Sound(sfx_Stair);
	        state += 1;
	    break;
	    case 1:
	        _teleport_tile = instance_position(round(npc_trigger.x),round(npc_trigger.y),obj_Teleport_Tile);
	        _teleport_tile.linked_tile.call_trigger = false;
	        npc_trigger.x = _teleport_tile.linked_tile.x;//set object coordinates to destination coordinates
	        npc_trigger.y = _teleport_tile.linked_tile.y;
	        npc_trigger.pathfind_loop = false;//disable loop
	        Center_Camera();
	        AStar_free();//Clear the path from memory.
	        Continue_Screen_Fade(0,.04,"in",id);//fade back in
	        state += 1;
	    break;
	    case 2:
	        if(npc_trigger.object_index = obj_Cursor){//if this is the cursor object,
	            Move_Cursor_To_Target(Get_Current_Turn(),npc_trigger.pathfinding_end_action);//continue path
	        }
	        else{//otherwise, this is a player
	            if(npc_trigger.pathfinding_end_action = "Walking_To_Start_Location"){
	                Walk_To_Start_Position(npc_trigger);//continue path
	            }
	            else{
	                Walk_To_Location(npc_trigger,npc_trigger.ai_destination_x,npc_trigger.ai_destination_y,npc_trigger.pathfinding_end_action);
	            }
	        }
	        state += 1;
	        instance_destroy();
	    break;
	}



}
