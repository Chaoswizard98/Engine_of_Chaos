function Prepare_For_Battle_Cutscene() {
	//Clears all existing events so the battle cutscene can start
	with(obj_Battle_Cutscene_Controller){
	    state = "Start_Pan";
	    display = true;
	    target = attacker;
    
	    //=================
	    //End Battle Phase=
	    //=================
	    End_Turn(attacker,"Battle_Cutscene");//update character origin / region flags and face down.
	    instance_destroy(obj_Battle_HUD);//destroy all menu instances, etc.
	    instance_destroy(obj_Land_Effect_Window);
    
	    if(!Object_Is_Character(original_target)){//if original target is not a character,
	        original_target = instance_create_layer(original_target.x,original_target.y,"Battle_Cutscene_Instance_Layer",obj_Placeholder);//Create placeholder to store tile location
	    }
    
	    Clear_Target_Range();//remove flashing tiles
	    UI_Cancel_Event(current_object,"Destroy_All_Menus","Battle_Cutscene");
	    Reset_Cursor_Display();//reset cursor size
	}



}
