function Shop_Empty_Faction_Event() {
	switch (state){
	    //======
	    //Start=
	    //======
	    case "Start":
	        state = "Backed_Out_Of_Menu";
	        Create_Dialogue(noone,Get_Character_Voice("Local",current_npc,"Total"),Get_General_Messages(dialogue_ID,"Start_Empty_Faction"),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	    break;
	    //===================
	    //Backed Out Of Menu=
	    //===================
	    case "Backed_Out_Of_Menu":
	        UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
	        instance_destroy();
	    break;
	}
}