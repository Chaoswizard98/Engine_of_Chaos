function Status_Effects_Battle() {
	var _character = player_trigger;
	if(Character_Is_Dead("Local",_character)){//skip this if character is already dead. (Death was caused during battle cutscene)
	    state = 1;
	}
	switch(state){
	    case 0:
	        state += 1;
	        var _message = "";
        
	        //run status effect scripts, build our message, update character's health etc.
	        //Buffs
	        _message += Status_Effect_Generic(_character,"Attack_Up");
	        _message += Status_Effect_Generic(_character,"Defense_Up");
	        _message += Status_Effect_Generic(_character,"Agility_Up");
	        _message += Status_Effect_Generic(_character,"Movement_Up");
        
	        //Debuffs
	        _message += Status_Effect_Generic(_character,"Attack_Down");
	        _message += Status_Effect_Generic(_character,"Defense_Down");
	        _message += Status_Effect_Generic(_character,"Agility_Down");
	        _message += Status_Effect_Generic(_character,"Movement_Down");
        
	        //Effects
	        _message += Status_Effect_Generic(_character,"Flight");
	        _message += Status_Effect_Generic(_character,"Poison");
	        _message += Status_Effect_Generic(_character,"Paralysis");
	        _message += Status_Effect_Generic(_character,"Silence");
	        _message += Status_Effect_Generic(_character,"Sleep");
	        _message += Status_Effect_Generic(_character,"Stun");
	        _message += Status_Effect_Generic(_character,"Petrify");
	        _message += Status_Effect_Generic(_character,"Bleed");
	        _message += Status_Effect_Generic(_character,"Magic_Immunity");
	        _message += Status_Effect_Generic(_character,"Snare");
	        _message += Status_Effect_Generic(_character,"Confusion");
	        _message += Status_Effect_Generic(_character,"Berserk");
	        _message += Status_Effect_Generic(_character,"Curse_Suppression");
        
	        //Summoned Units
	        _message += Summoned_Unit_Status_Effect(_character);
        
	        //Death
	        if(Character_Is_Dead("Local",_character)){
	            _message += Global_Status_Effect_Message("Local",_character,"Death","Death");
	        }
        
        
	        //End 'show message' event
	        if(_message != ""){//if we dont have the null message
	            _message = string_delete(_message,1,1);//delete the first character 'newline'
	            _message = string_delete(_message,string_length(_message),1);//delete last "pause break" symbol
	            Create_Dialogue(noone,Get_Generic_Voice("none"),_message,id,true,true);
	        }
	        else{//no status effects need updating, end event
	            event_perform(ev_other,ev_user0);
	        }
	    break;
	    case 1:
	        state += 1;
	        //Execute_Battle_Event('Start_New_Turn');
	        Execute_Battle_Event("Start_Death_Animation");
	        instance_destroy();
	    break;
	}



}
