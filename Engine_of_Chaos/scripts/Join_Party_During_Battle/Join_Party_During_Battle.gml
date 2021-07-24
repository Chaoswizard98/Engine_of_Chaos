function Join_Party_During_Battle() {
	var _player, _npc;
	_player = player_trigger;//set player to the npc's current object
	_npc = npc_trigger;//set npc

	switch(state){
	    case 0:
	        Create_Dialogue(_npc.portrait_ID,Get_Voice(_npc.voice_ID),"Sure, I'll join you in battle.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        state += 1;
	    break;
	    case 1:
	        _npc.cutscene_mode = false;//no longer in a 'cutscene'
	        _player.cutscene_mode = false;//player no longer in a cutscene.
	        _npc.control_in_battle = true;//we can now control this NPC
	        _npc.can_interact_in_battle = false;//can no longer talk to in battle
	        _npc.faction = _player.faction;
	        Face_Direction(_player,"Down");
	        Face_Direction(_npc,"Down");
	        End_Turn(_player,"Search");
	        instance_destroy();//destroy the cutscene controller
	    break;
	}



}
