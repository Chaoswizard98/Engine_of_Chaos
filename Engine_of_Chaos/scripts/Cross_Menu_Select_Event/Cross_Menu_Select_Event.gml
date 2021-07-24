function Cross_Menu_Select_Event() {
	//run the selected event
	switch(menu_event[current_index]){
	    case "Display_Member_List_Status": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Status","Status",id); break;//Display member list (status)
	    case "Display_Member_List_Item_Use": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Item","Use_Item",id); break;//Display member list (item)
	    case "Display_Member_List_Item_Give": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Item","Give_Item",id); break;//Display member list (item)
	    case "Display_Member_List_Item_Equip": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Item","Equip_Item",id); break;//Display member list (item)
	    case "Display_Member_List_Item_Drop": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Item","Drop_Item",id); break;//Display member list (item)
	    case "Display_Member_List_Magic": Create_Member_List_Controller(Get_Lookup_Type(current_character.faction),current_character.faction,"Magic","Magic",id); break;//Display member list (magic)
	    case "Display_Member_List_Leave": Create_Party_Management_Controller(Get_Lookup_Type(current_character.faction),current_character,current_npc,"Leave_Battle_Party",id); break;
	    case "Display_Member_List_Join": Create_Party_Management_Controller(Get_Lookup_Type(current_character.faction),current_character,current_npc,"Join_Battle_Party",id); break;
    
	    case "Shop_Buy": Create_Shop(Get_Lookup_Type(current_character.faction),0,current_character,current_npc,id); break;//shop slot, player, npc, current object
	    case "Shop_Sell":  Create_Shop(Get_Lookup_Type(current_character.faction),1,current_character,current_npc,id); break;//shop slot, player, npc, current object
	    case "Shop_Repair": Create_Shop(Get_Lookup_Type(current_character.faction),2,current_character,current_npc,id); break;//shop slot, player, npc, current object
	    case "Shop_Deals": Create_Shop(Get_Lookup_Type(current_character.faction),3,current_character,current_npc,id); break;//shop slot, player, npc, current object
    
	    case "Church_Raise": Create_Church_Controller(Get_Lookup_Type(current_character.faction),"Raise",current_character,current_npc,id,current_npc.church_dialogue_ID[0]); break;//action, player, npc, current object, dialogue ID
	    case "Church_Cure": Create_Church_Controller(Get_Lookup_Type(current_character.faction),"Cure",current_character,current_npc,id,current_npc.church_dialogue_ID[1]); break;//action, player, npc, current object, dialogue ID
	    case "Church_Promote": Create_Church_Controller(Get_Lookup_Type(current_character.faction),"Promote",current_character,current_npc,id,current_npc.church_dialogue_ID[2]); break;//action, player, npc, current object, dialogue ID
	    case "Church_Save": Create_Church_Controller(Get_Lookup_Type(current_character.faction),"Save",current_character,current_npc,id,current_npc.church_dialogue_ID[3]); break;//action, player, npc, current object, dialogue ID
    
	    case "Display_Item_Menu": Create_Item_Town_Menu(id,current_character,current_npc); break;//display item menu (use, give, equip, drop)
	    case "Display_Church_Menu": Create_Church_Menu(id,current_character,current_npc); break;
    
	    //case "Talk_To_Advisor": Update_Cutscene_Controller('Default','Advisor_Dialogue',0,current_character,current_npc); instance_destroy(); break;//call advisor dialogue
	    case "Talk_To_Advisor": Update_Cutscene_Controller(current_npc.other_dialogue_ID,"NPC_Dialogue",0,current_character,current_npc); instance_destroy(); break;//call advisor dialogue
	    case "Search": Search_Event(current_character,"menu_trigger"); break;//Search chests / talk to npcs
	    case "Search_In_Battle": Pan_Out_Land_Effect_Window("Search"); instance_destroy(); break;//Search chests / talk to npcs
    
	    case "Display_Options_Menu": Create_Options_Menu(id); break;//cursor menu (options)
	    case "Display_Minimap": Create_Minimap_Controller(id); break;//minimap
	    case "Quit": Create_Cutscene_Controller("Quit_Game","Battle_Cutscene",0,id); break;//cursor menu (quit)
    
	    case "Attack": Generate_Target_Range(current_character,round(current_character.x),round(current_character.y),Get_Character_Max_Attack_Range("Local",current_character,"Total"),Get_Character_Min_Attack_Range("Local",current_character,"Total"),Get_Character_Attack_Range_Type("Local",current_character,"Total"),true); Create_Target_Selection_Controller(current_character,"Attack",id); break;
	    case "End_Turn": End_Turn(current_character,"End_Turn"); instance_destroy(); break;//end turn in battle (stay / defend)
	    case "Display_Spells_Battle": Create_Spell_Selection_Controller(current_character,id);break;
	    case "Display_Item_Menu_Battle": Create_Item_Menu_Battle(id,current_character,current_npc); break;//display item menu (use, give, equip, drop)
	    case "Use_Items_Battle": Create_Item_Selection_Controller(current_character,id,"Use_Item");break;
	    case "Give_Items_Battle": Create_Item_Selection_Controller(current_character,id,"Give_Item");break;
	    case "Equip_Items_Battle": Create_Item_Selection_Controller(current_character,id,"Equip_Item");break;
	    case "Drop_Items_Battle": Create_Item_Selection_Controller(current_character,id,"Drop_Item");break;
	}



}
