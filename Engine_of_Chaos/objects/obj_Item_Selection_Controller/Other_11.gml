if(state = "Reverse_Equip"){
    state = "Selecting_Item";
    display = true;
    pan_y = 0;
    pan_x = max_x_pan;
    pan_direction = "left";
    number_of_menu_options = 4;//Number of menu options
    play_pan_sound = true;
    current_index = 0;
    Fill_Equip_Array(id,current_character,equip_slot);
    Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Max_Attack_Range"),Get_Character_Min_Attack_Range("Local",current_character,"Ommit_Equipment_Slot",equip_slot)+Get_Inventory_Item_Stats("Local",current_character,inventory_slot[current_index],"Min_Attack_Range"),"Equip_Item",true);
    
}
else if(cancel_event = "Main_Battle_Menu"){
    UI_Cancel_Event(current_object,"Backed_Out_Of_Main_Battle_Menu","none");
    instance_destroy();
}
else{
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();
}

