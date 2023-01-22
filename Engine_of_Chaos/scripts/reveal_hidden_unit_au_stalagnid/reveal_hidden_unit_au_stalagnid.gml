function Reveal_Hidden_Unit_AU_Stalagnid() {
	var _character = Get_Current_Turn();
	switch(state){
	    case 0:
	        instance_activate_object(_character);//activate the character
	        _character.cutscene_mode = true;//enable cutscene mode
	        _character.hidden = false;//no longer hidden
	        Remove_From_Hidden_Units_Array(_character);//remove from hidden array
	        //Spin(_character,3,2,270,"Clockwise");//character, iterations, speed, end direction, spin direction
			Sprite_Animation(_character,spr_AU_Stalagnid_Reveal,1,.125);
	        state += 1;
	    break;
	    case 1:
			_character.sprite_index = spr_AU_Stalagnid_Overworld;
	        Create_Dialogue(noone,Get_Generic_Voice("Monster_Has_Appeared"),Get_General_Messages("Generic_Battle","Reveal_Hidden_Unit",string(Get_Character_Name("Local",_character,"Total"))),id,true,true);
	        state += 1;
	    break;
	    case 2:
	        state += 1;
	        if(_character.attack_on_reveal){//if they take immediate action after reveal,
	            Add_To_Turn_Order(_character,obj_Battle_Controller.current_turn+1);//set them next in the list
	            if(_character.reveal_action = "Immediate_Action"){
	                obj_Battle_Controller.skip_hidden_reveal = true;//temporarily bypass next reveal so we can attack
	            }
	        }
	        _character.cutscene_mode = false;
	        Execute_Battle_Event("End_Turn");//run end turn event
	        instance_destroy();
	    break;
	}
}