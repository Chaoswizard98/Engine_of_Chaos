function Annas_Herbals_Dialogue() {
	var _player = player_trigger;//set player to the npc's current object
	var _npc = other_trigger;//set npc

	switch(state){
	    case 0:
			Create_Character_Dialogue("Local",_npc,Get_NPC_Dialogue_Messages(_npc,_player,"Annas_Herbals_Greeting"),id,true,true);
	        state += 1;
	    break;
	    case 1:
	        state += 1;
	        Create_Shop_Menu(id,_player,_npc);//current object, current character
	    break;
	    case 2:
			Create_Character_Dialogue("Local",_npc,Get_NPC_Dialogue_Messages(_npc,_player,"Default_Shopkeeper_Farewell"),id,true,true);
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
