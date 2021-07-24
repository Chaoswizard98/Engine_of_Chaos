if(parent_event = "Backed_Out_Of_Menu"){
    pan_direction = "left";
    play_pan_sound = true;
    state = "Selecting_Item";
    if(action = "Use_Item"){
        Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Use_Range"),Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Use_Range"),"Use_Item",true);
    }
    else if(action = "Give_Item"){
        Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),1,0,"Give_Item",true);
    }
}
else{
    UI_Cancel_Event(current_object,parent_event,parent_event_trigger);
    instance_destroy();
}

