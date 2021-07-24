if(parent_event = "Backed_Out_Of_Menu"){
    state = "Pan_In_Target_HUD";
    Create_Battle_HUD(id,targets[current_target],"Show_Target_HUD","Target_Selection");
}
else{
    UI_Cancel_Event(current_object,parent_event,parent_event_trigger);
    instance_destroy();
}

