//=================================
//if moving through teleport tiles=
//=================================
if(pathfind_loop){
    Pathfind_Loop_Event(id);
}
//=====================
//if path to character=
//=====================
else if(pathfinding_end_action = "Start_Turn"){
    AStar_free();//Clear the path from memory.
    pathfinding = false;//end pathfinding
    Hide_Cursor();//hide the cursor
    Execute_Battle_Event("Start_Turn");//run start turn event
}
//====================
//if target selection=
//====================
else if(pathfinding_end_action = "Target_Selection"){
    AStar_free();//Clear the path from memory.
    pathfinding = false;//end pathfinding
    with(obj_Target_Selection_Controller){
        event_perform(ev_other,ev_user0);
    }
    //obj_Target_Selection_Controller.allow_interaction = true;
}
//===========================
//if cancel target selection=
//===========================
else if(pathfinding_end_action = "Cancel_Target_Selection"){
    AStar_free();//Clear the path from memory.
    pathfinding = false;//end pathfinding
    Hide_Cursor();//hide the cursor
    with(obj_Target_Selection_Controller){
        event_perform(ev_other,ev_user0);
    }
}

