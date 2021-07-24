if(Object_Is_At_Location(Get_Current_Turn(),x,y)){//if player stands on this tile
    if(!Destination_Blocked(linked_tile.x,linked_tile.y,Get_Character_Movement_Type("Local",Get_Current_Turn(),"Total"),Get_Current_Turn(),"Character")){//if the destination tile isnt blocked
        if((call_trigger)&&(!Get_Current_Turn().pathfinding)){//if we can teleport,
            Create_Cutscene_Controller(manual_movement_cutscene_ID,"Battle_Cutscene",0,noone,Get_Current_Turn());
        }
    }
}
else if(Object_Is_At_Location(obj_Cursor,x,y)){//if we're moving the cursor
    if((call_trigger)&&(obj_Cursor.allow_interaction)&&(!obj_Cursor.pathfinding)){//if player is moving cursor and we arent pathfinding
        Create_Cutscene_Controller(manual_movement_cutscene_ID,"Battle_Cutscene",0,noone,obj_Cursor);
    }
}
else{//player is not on tile
    call_trigger = true;//allow tile to be triggered
}

