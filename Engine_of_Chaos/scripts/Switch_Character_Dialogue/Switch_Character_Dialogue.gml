function Switch_Character_Dialogue() {
	var _player, _npc;
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc

	switch(state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"Why don't you rest a while " +_player.name+ "?^ I'll take it from here.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Control_New_Character(_player,_npc);//swap controls to new character
	        //End of cutscene code=
	        _npc.cutscene_mode = false;//no longer in a 'cutscene'
	        _player.cutscene_mode = false;//player no longer in a cutscene.
	        global.Player.allow_interaction = true;//allow player movement
	        instance_destroy();//destroy the cutscene controller
	    break;
	}



}
