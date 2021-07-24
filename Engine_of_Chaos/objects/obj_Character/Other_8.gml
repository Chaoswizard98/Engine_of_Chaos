//=================================
//if moving through teleport tiles=
//=================================
if(pathfind_loop){
    Pathfind_Loop_Event(id);
}
//===============================
//if returning to start location=
//===============================
else if(pathfinding_end_action = "Walking_To_Start_Location"){
    AStar_free();//Clear the path from memory.
    pathfinding = false;//no longer pathfinding
    End_Character_Movement(id,"End_Movement");//reset depth and clear movement tiles
    Pan_Out_Land_Effect_Window("Enable_Cursor_Movement");
}
else if(pathfinding_end_action = "Perform_AI_Action"){
    pathfinding = false;//no longer pathfinding
    AStar_free();//Clear the path from memory.
    End_Character_Movement(_character,"End_Movement");//reset depth and clear movement tiles
    switch(ai_action){
        case "Attack":
            Generate_Target_Range(id,round(x),round(y),Get_Character_Max_Attack_Range("Local",id,"Total"),Get_Character_Min_Attack_Range("Local",id,"Total"),Get_Character_Attack_Range_Type("Local",id,"Total"),true);
            Create_Target_Selection_Controller(id,"AI_Attack",id);
        break;
        case "Cast_Spell":
            Generate_Target_Range(id,round(x),round(y),Get_Spell_Slot_Stats("Local",id,ai_inventory_slot,ai_inventory_level,"Max_Target_Range"),Get_Spell_Slot_Stats("Local",id,ai_inventory_slot,ai_inventory_level,"Min_Target_Range"),"Magic",true);
            Create_Target_Selection_Controller(id,"AI_Cast_Spell",id);
        break;
        case "Use_Item":
            Generate_Target_Range(id,round(x),round(y),Get_Inventory_Item_Stats("Local",id,ai_inventory_slot,ai_inventory_level,"Max_Use_Range"),Get_Inventory_Item_Stats("Local",id,ai_inventory_slot,ai_inventory_level,"Min_Use_Range"),"Use_Item",true);
            Create_Target_Selection_Controller(id,"AI_Use_Item",id);
        break;
        default:
            End_Turn(_character,"End_Turn");
        break;
    }
}




