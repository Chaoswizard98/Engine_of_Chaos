function Found_Fluffy_Cutscene() {
	var _jason = player_trigger;
	var _barrel = other_trigger;

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"01"),id,false,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 1:
	        state += 1;
			Create_YesNo_Menu(id);
	    break;
	    case 2:
	        state = 3;
			if(decision = "Yes"){
				if(Faction_Inventory_Is_Full("Global","Player")){//Inventory full
					Start_New_Dialogue(Get_Cutscene_Messages(id,"02"),false,true);//portrait, voice, message,object,arrow,pan
				}
				else{//Can Loot fluffy
					Give_Faction_Item("Global","Player","AU_Fluffy");
					Start_New_Dialogue(Get_Cutscene_Messages(id,"03"),false,true);//portrait, voice, message,object,arrow,pan
					Set_Chest_Looted(_barrel);
					Stop_Dialogue_Interaction();
					Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
				}
			}
			else{
				//end cutscene
				//Found_Fluffy_Cutscene();
				Pan_Out_Dialogue();
			}
	    break;
	    case 3:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
			//Set_Story_Flag(0,0,"Talked_To_Jess");//Remember that we talked to Jess
			//Town_Character_Stats_Jess(_jess);//Update her dialogue scripts (to not call this one again)
	        instance_destroy();
	    break;
	}
}