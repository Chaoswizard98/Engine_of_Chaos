if(state = "Start"){
    if(Get_Spell("Local",current_character,0) = "none"){//character has no magic
        state = "Display_Cancel_Message";
        event_perform(ev_other,ev_user0);
    }
    else{//character has magic
        //pan in menu
        state = "Selecting_Spell";
        display = true;
        pan_y = max_y_pan;
        pan_direction = "up";
        number_of_menu_options = 4;//Number of menu options
        play_pan_sound = true;
        Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],spell_level,"Max_Target_Range"),Get_Spell_Slot_Stats("Local",current_character,inventory_slot[current_index],spell_level,"Min_Target_Range"),"Magic",true);
    }
}


else if(state = "Display_Cancel_Message"){
    state = "Cancel_Spell_Selection";
    Create_Dialogue("none",Get_Voice("none"),Get_General_Messages("Spell_Selection","No_Magic"),id,true,true);
}


else if(state = "Cancel_Spell_Selection"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();
}

else if(state = "Target_Selection"){
    //if(Get_Character_Magic('Local',current_character,'Total') < Get_Spell_Slot_Stats('Local',current_character,inventory_slot[current_index],spell_level,'Magic_Cost')){//Not enough magic
        
    //}
    //else{//select target
        Create_Target_Selection_Controller(current_character,"Magic",id,inventory_slot[current_index],spell_level);
    //}
}

