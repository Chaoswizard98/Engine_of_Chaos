function Generic_Innkeeper() {
	var _player, _npc;
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc

	switch(state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"Hello there!%#What can I do for ya?",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Create_Innkeeper_Menu(id);
	    break;
	    case 2:
	        switch(decision){
	            case "Buy": 
	                Create_Shop(Get_Lookup_Type(_player.faction),0,_player,_npc,id);
	                state = 1;
	            break;
	            case "Talk":
	                Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"Be careful if you're headed east.% The wolf population can get a bit out of hand this time of year.",id,true,true);
	                state = 1;
	            break;
	            default:
	                Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"Take care now!",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	                state = 3;
	            break;
	        }
	    break;
	    case 3:
	        state += 1;
	        _npc.cutscene_mode = false;//no longer in a 'cutscene'
	        if(_npc.face_original_direction){//if the npc faces the original direction on scene end
	            Face_Direction(_npc,_npc.original_direction);//reset direction (if needed)
	        }
	        _player.allow_interaction = true;//allow player movement
	        _player.cutscene_mode = false;//player no longer in a cutscene.
	        instance_destroy();//destroy the cutscene controller
	    break;
	}



}
