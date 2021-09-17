function Switch_Character_Dialogue(){
	var _player = player_trigger;//set player to the npc's current object
	var _npc = other_trigger;//set npc

	switch(state){
	    case 0:
			Create_Character_Dialogue("Local",_npc,"Default_Switch_Character",id,true,true);
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Control_New_Character(_player,_npc);//swap controls to new character
	        _npc.cutscene_mode = false;//no longer in a 'cutscene'
	        _player.cutscene_mode = false;//player no longer in a cutscene.
	        global.Player.allow_interaction = true;//allow player movement
	        instance_destroy();//destroy the cutscene controller
	    break;
	}
}