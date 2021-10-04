function Destination_Blocked(_x,_y,_movement_type,_object,_formula){
	if(_formula = "Cursor"){
	    if(!Can_Walk_On_Terrain(Get_Terrain_Type(_x,_y),_movement_type)){//if we cant walk on the terrain
	        return true;
	    }
	}
	else if(_formula = "Character"){
	    if(global.In_Battle){//if we're in battle
	        if(!Tile_Is_Within_Movement_Range(_x,_y)){//is this tile in our movement range?
	            return true;
	        }
	        with(_object){//instance_place requires the object to run the code
	            if(!Can_Pass_Through_Character(_object,instance_place(_x,_y,obj_Character))){//if we cant walk through the character
	                return true;
	            }
	        }
	    }
	    else{//otherwise we're in town, check town stuff
	        if(!Can_Walk_On_Terrain(Get_Terrain_Type(_x,_y),_movement_type)){//if we cant walk on the terrain
	            return true;
	        }
	        with(_object){//instance_place requires the object to run the code
	            if(!Can_Pass_Through_Character(_object,instance_place(_x,_y,obj_Character))){//if we cant walk through the character
	                return true;
	            }
	            if(!Can_Walk_On_Ledge(_object,instance_place(_x,_y,obj_Ledge_Parent))){
	                return true;
	            }
	            if(!Can_Open_Door(_object,instance_place(_x,_y,obj_Door_Parent))){
	                return true;
	            }
	        }
	    }
	}
	else if(_formula = "Movement_Range"){
	    if(!Can_Walk_On_Terrain(Get_Terrain_Type(_x,_y),_movement_type)){//if we cant walk on the terrain
	        return true;
	    }
	    with(_object){//instance_place requires the object to run the code
	        if(!Can_Pass_Through_Character(_object,instance_place(_x,_y,obj_Character))){//if we cant walk through the character
	            return true;
	        }
	        if(!Can_Walk_On_Ledge(_object,instance_place(_x,_y,obj_Ledge_Parent))){
	            return true;
	        }
	    }
	}
	else if(_formula = "AI_Pathfinding"){
	    if(!Can_Walk_On_Terrain(Get_Terrain_Type(_x,_y),_movement_type)){//if we cant walk on the terrain
	        return true;
	    }
	    with(_object){//instance_place requires the object to run the code
	        if(!Can_Walk_On_Ledge(_object,instance_place(_x,_y,obj_Ledge_Parent))){
	            return true;
	        }
	    }
	}

	return false;
}