//================================
//enabling manual cursor movement=
//================================
if(action = "Enable_Cursor_Movement"){
    Execute_Battle_Event("Enable_Cursor_Movement");//run end turn event
    instance_destroy();//destroy battle HUD
}
//==========================
//ending a character's turn=
//==========================
else if(action = "End_Turn"){
    Execute_Battle_Event("End_Turn");//run end turn event
    instance_destroy();//destroy battle HUD
}
//===================================
//Interacting with searchable object=
//===================================
else if(action = "Search"){
    var _interactable_object = Get_Interactable_Object(current_character.x,current_character.y,current_character.direction);
    _interactable_object.current_object = current_character;
    
    with(_interactable_object){//3
        event_perform(ev_other,ev_user11);//run interact code
    }
    
    instance_destroy();//destroy battle HUD
}
//=========================
//end character inspection=
//=========================
else if(action = "End_Inspect_Character"){
    obj_Cursor.allow_interaction = true;
    instance_destroy();//destroy battle HUD
}
//=====================
//new target selection=
//=====================
else if(action = "Show_Target_HUD"){
    with(obj_Target_Selection_Controller){
        event_perform(ev_other,ev_user0);
    }
}
//========================
//Update target selection=
//========================
else if(action = "Update_Target_Selection"){
    with(obj_Target_Selection_Controller){
        event_perform(ev_other,ev_user0);
    }
    instance_destroy();
}
//===================================
//Default: Summon Land Effect Window=
//===================================
else{
    Create_Land_Effect_Window(id,current_character,action);
}

