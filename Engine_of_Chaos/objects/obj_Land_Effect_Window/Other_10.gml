//=====================
//Start Character Turn=
//=====================
if(action = "Start_Character_Turn"){
    Execute_Battle_Event("Start_Character_Turn");//run start turn event
}
//=======================
//Enable Cursor Movement=
//=======================
else if(action = "Enable_Cursor_Movement"){
    Pan_Out_Battle_HUD(obj_Battle_HUD,action);
    instance_destroy();
}
//===================
//End Character Turn=
//===================
else if(action = "End_Turn"){
    Pan_Out_Battle_HUD(obj_Battle_HUD,action);
    instance_destroy();
}
//=============
//Search Event=
//=============
else if(action = "Search"){
    Pan_Out_Battle_HUD(obj_Battle_HUD,action);
    instance_destroy();
}
//==================
//Inspect Character=
//==================
else if(action = "Inspect_Character"){
    obj_Cursor.allow_interaction = true;
}
//======================
//End Inspect Character=
//======================
else if(action = "End_Inspect_Character"){
    Pan_Out_Battle_HUD(obj_Battle_HUD,action);
    instance_destroy();
}

