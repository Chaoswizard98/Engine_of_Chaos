if(parent_event = "Backed_Out_Of_Menu"){
    pan_direction = "left";
    play_pan_sound = true;
    state = "Selecting_Spell_Level";
    Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],spell_level,"Max_Target_Range"),Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],spell_level,"Min_Target_Range"),"Magic",true);
}
else{
    UI_Cancel_Event(current_object,parent_event,parent_event_trigger);
    instance_destroy();
}

