function NPC_Dialogue() {
	//============================
	//Default NPC Dialogue Script=
	//============================
	var _player, _npc, _message;
	var _script_ID = argument[0];
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc
	_message = "";//message

	//=========================
	//Log witty 1 liner's here=
	//=========================
	switch(_script_ID){//in case extra data is needed for a dialogue line, or forcing a character to look in a different direction post dialogue.    
	    default: _message = Get_NPC_Dialogue_Message("NPC_Dialogue",_script_ID,Get_Character_Name("Local",_player,"Base"));//default to use provided script name and player name as extra data (Most common use)
	}

	//========================
	//Print the witty message=
	//========================
	switch (state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),string(_message),id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	        break;
	    case 1:
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
