function Status_Effect_Generic() {
	var _character = argument[0];//character
	var _effect = argument[1];//effect
	var _cured = false;

	if(Character_Is_Under_Effect("Local",_character,_effect)){
	    if(Get_Character_Status_Effect("Local",_character,_effect,"Total","Turns_Remaining") > 0){//if turns remaining is higher than 0. (-1 is for infinite)
	        Set_Status_Effect_Stat("Local",_character,_effect,"Remove",1,"Turns_Remaining");//reduce turns remaining by 1
	        if(Get_Character_Status_Effect("Local",_character,_effect,"Total","Turns_Remaining") = 0){//if status effect ended,
	            Cure_Status_Effect("Local",_character,_effect);//no longer has effect
	            _cured = true;
	            return Global_Status_Effect_Message("Local",_character,_effect,"Effect_Ends");
	        }
	    }
	    else if(Get_Character_Status_Effect("Local",_character,_effect,"Total","Turns_Remaining") = -1){//if turns remaining is -1 (infinite)
	        if(irandom_range(0,100)<Get_Character_Status_Effect("Local",_character,_effect,"Total","Resistance")){//test saving throw
	            Cure_Status_Effect("Local",_character,_effect);//no longer has effect
	            _cured = true;
	            return Global_Status_Effect_Message("Local",_character,_effect,"Effect_Ends");
	        }
	    }
	    if(!_cured){
	        Update_Status_Effect_Event(_character,_effect);
	        return Global_Status_Effect_Message("Local",_character,_effect,"Update_Effect");
	    }
	}

	return "";



}
