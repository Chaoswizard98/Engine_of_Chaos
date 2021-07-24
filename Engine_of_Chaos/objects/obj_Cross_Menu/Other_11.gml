if(cancel_event = "Main_Battle_Menu"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Main_Battle_Menu","none");
    instance_destroy();
}
else{
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();
}

