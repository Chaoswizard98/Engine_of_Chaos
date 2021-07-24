function Teleport_Tile_Manual_Fade() {
	var _teleport_tile = noone;

	switch(state){
	    case 0:
	        npc_trigger.allow_interaction = false;
	        Create_Screen_Fade(c_black,0,1,.04,"out",id);//color, start, end, speed, direction, object
	        _teleport_tile = instance_position(round(npc_trigger.x),round(npc_trigger.y),obj_Teleport_Tile);
	        _teleport_tile.call_trigger = false;
	        Play_Sound(sfx_Stair);
	        state += 1;
	    break;
	    case 1:
	        _teleport_tile = instance_position(round(npc_trigger.x),round(npc_trigger.y),obj_Teleport_Tile);
	        npc_trigger.x = _teleport_tile.linked_tile.x;//set object coordinates to destination coordinates
	        npc_trigger.y = _teleport_tile.linked_tile.y;
	        Center_Camera();
	        _teleport_tile.linked_tile.call_trigger = false;
        
	        Continue_Screen_Fade(0,.04,"in",id);//fade back in
	        state += 1;
	    break;
	    case 2:
	        npc_trigger.allow_interaction = true;
	        state += 1;
	        instance_destroy();
	    break;
	}



}
