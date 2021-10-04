function Get_Interactable_Object(_x,_y,_direction){
	var _distance = 1;
	var interactable_object = noone;

	switch(_direction){
	    case 0://right
	        _distance += position_meeting(_x+(global.Tile_Size*_distance),_y,obj_Table);//if table, extend search by 1
	        interactable_object = instance_position(_x+(global.Tile_Size*_distance),_y,obj_interactable_parent);
	    break;
	    case 90://up
	        _distance += position_meeting(_x,_y-(global.Tile_Size*_distance),obj_Table);//if table, extend search by 1
	        interactable_object = instance_position(_x,_y-(global.Tile_Size*_distance),obj_interactable_parent);
	    break;
	    case 180://left
	        _distance += position_meeting(_x-(global.Tile_Size*_distance),_y,obj_Table);//if table, extend search by 1
	        interactable_object = instance_position(_x-(global.Tile_Size*_distance),_y,obj_interactable_parent);
	    break;
	    case 270://down
	        _distance += position_meeting(_x,_y+(global.Tile_Size*_distance),obj_Table);//if table, extend search by 1
	        interactable_object = instance_position(_x,_y+(global.Tile_Size*_distance),obj_interactable_parent);
	    break;
	}

	if(interactable_object != noone){
	    if((global.In_Battle && interactable_object.can_interact_in_battle) || (!global.In_Battle && interactable_object.can_interact)){//only return object if we can interact with it
	        return interactable_object;
	    }
	}

	return noone;
}