function Summoned_Unit_Status_Effect() {
	var _character = argument[0];
	var _message = "";

	if(_character.is_summon){
	    if(_character.summoned_turns_remaining != -1){
	        _character.summoned_turns_remaining -= 1;
	        if(_character.summoned_turns_remaining <= 0){
	            _character.summoned_turns_remaining = 0;
	            _message += Global_Status_Effect_Message("Local",_character,"End_Summon","End_Summon");
	        }
	    }
	}
	else{
	    var _mp_drain = 0;
	    with(obj_Character){//loop through all characters
	        if(is_summon &&(summoner = _character)){//if character summoned this unit
	            _mp_drain += magic_consumed;
	        }
	    }
	    if(_mp_drain > Get_Character_Magic("Local",_character,"Total")){//Summoned units die
	        _message += Get_General_Messages("Generic_Battle","Consumed_Spell_MP",Get_Character_Name("Local",_character,"Total"),string(_mp_drain));
	        _message += Get_General_Messages("Generic_Battle","Break_Spell_Maintain",Get_Character_Name("Local",_character,"Total"));
	        with(obj_Character){//loop through all characters
	            if(is_summon && (summoner = _character) && (magic_consumed > 0)){//if they were summoned by this character and consume MP
	                summoned_turns_remaining = 0;
	            }
	        }
	    }
	    else if(_mp_drain != 0){//Default mp drain
	        _message += Get_General_Messages("Generic_Battle","Consumed_Spell_MP",Get_Character_Name("Local",_character,"Total"),string(_mp_drain));
	    }
	    Set_Character_Magic("Local",_character,"Remove",_mp_drain);
	}

	return _message;



}
