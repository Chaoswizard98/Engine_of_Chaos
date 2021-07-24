function NPC_Dialogue_01() {
	var _player, _npc;
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc

	switch(state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"This is custom dialogue.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Shudder(_player,6000);
	    break;
	    case 2:
	        _npc.cutscene_mode = false;//no longer in a 'cutscene'
	        _player.allow_interaction = true;//allow player movement
	        _player.cutscene_mode = false;//player no longer in a cutscene.
	        instance_destroy();//destroy the cutscene controller
	    break;
	}



}
