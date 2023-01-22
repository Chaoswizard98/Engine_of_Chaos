function Can_Have_Turn() {
	//tests if the object can have their turn
	if(Object_Is_Character(Get_Current_Turn())){//if object is a character
	    if(Get_Current_Turn().hidden){//if character is hidden,
	        instance_activate_object(Get_Current_Turn());//activate the object
	        if(!Tile_Is_Empty(Get_Current_Turn())){//if the tile is not empty
				if(Get_Current_Turn().disable_on_hide){
					instance_deactivate_object(Get_Current_Turn());
				}
	            return false;
	        }
	        else{
	            if(Get_Current_Turn().disable_on_hide){
					instance_deactivate_object(Get_Current_Turn());
				}
	        }
	    }
	}
	else if(Object_Is_Spawner(Get_Current_Turn())){//if object is a mob-spawner
	    if(!Tile_Is_Empty(Get_Current_Turn())){//if the tile is not empty
	        return false;
	    }
	}

	return true;
}