function Jess_Dialogue() {
	var _jason = player_trigger;
	var _jess = other_trigger;

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _jess.cutscene_mode = true;
	        Create_Character_Dialogue("Local",_jess,Get_Cutscene_Messages(id,"01"),id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 1:
	        state += 1;
	        Give_Faction_Item("Global","Player","SF2_Healing_Seed");
	        Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"02"),id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	    break;
	    case 2:
	        state += 1;
	        Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"03"),id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 3:
	        state += 1;
	        Create_Character_Dialogue("Local",_jess,Get_Cutscene_Messages(id,"04"),id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 4:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _jess.cutscene_mode = false;
			Set_Story_Flag(0,0,"Talked_To_Jess");//Remember that we talked to Jess
			Town_Character_Stats_Jess(_jess);//Update her dialogue scripts (to not call this one again)
	        instance_destroy();
	    break;
	}
}