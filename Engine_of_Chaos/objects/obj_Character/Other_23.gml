if((parent_event = "Backed_Out_Of_Menu")||(parent_event = "Backed_Out_Of_All_Menus")){
    allow_interaction = true;
}
else if(parent_event = "Backed_Out_Of_Main_Battle_Menu"){
    Generate_Movement_Range(id);
    Set_Active_Character_Depth(id);//they appear above all other characters
    allow_interaction = true;
}
else if((parent_event = "Destroy_All_Menus")&&(parent_event_trigger = "End_Turn")){
    End_Turn(id,"Target");
}
//if destroy all menus && in battle
//end turn

