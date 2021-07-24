function Generic_Advisor_Dialogue() {
	var _player, _npc;
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc

	switch(state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),Get_NPC_Dialogue_Message("Advisor_Dialogue",_npc.advisor_dialogue_greeting_ID,string(_player.name)),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Create_Advisor_Menu(id,_player,_npc);//current object, current character
	    break;
	    case 2:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),Get_NPC_Dialogue_Message("Advisor_Dialogue",_npc.advisor_dialogue_farewell_ID,string(_player.name)),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
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
