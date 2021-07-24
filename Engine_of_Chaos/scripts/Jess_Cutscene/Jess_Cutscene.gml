function Jess_Cutscene() {
	var _jason = player_trigger;
	var _jess = npc_trigger;

	switch(state){
	    case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _jess.cutscene_mode = true;
	        Create_Dialogue(Get_Character_Portrait("Local",_jess,"Total"),Get_Voice(Get_Character_Voice("Local",_jess,"Total")),"Oh! Hey "+Get_Character_Name("Local",_jason,"Total")+"!^ I'm glad you stopped by!% I wanted to give you something before you left for your next adventure.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 1:
	        state += 1;
	        Give_Faction_Item("Global","Player","Healing_Seed");
	        Create_Dialogue("none",noone,"-JESS gives "+Get_Character_Name("Local",_jason,"Total")+" a healing seed-",id,false,true);//portrait, voice, message,object,arrow,pan
	        Stop_Dialogue_Interaction();
	        Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
	    break;
	    case 2:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jason,"Total"),Get_Voice(Get_Character_Voice("Local",_jason,"Total")),"Thanks JESS.",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 3:
	        state += 1;
	        Create_Dialogue(Get_Character_Portrait("Local",_jess,"Total"),Get_Voice(Get_Character_Voice("Local",_jess,"Total")),"Stay safe out there okay?",id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
	    case 4:
	        state += 1;
	        _jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _jess.cutscene_mode = false;
	        global.Story_Flags[0,0] = "Talked_To_Jess";
	        instance_destroy();
	    break;
	}



}
