function Apply_Battle_Cutscene_Status_Effects() {
	var _attacker = argument[0];
	var _target = argument[1];
	var _action = argument[2];
	var _effect = argument[3];
	var _effect_level = argument[4];

	var _message = "";
	var _name = "";
	var _potency = "";
	var _turns_remaining  = "";
	var _cure = "";

	//=============
	//Apply Effect=
	//=============
	var i = 0;
	for(i = 0; i < 21; i+= 1){
	    switch(i){
	        case 0: _name = "Attack_Up"; _potency = "Attack_Up_Potency"; _turns_remaining  = "Attack_Up_Turns_Remaining"; break;
	        case 1: _name = "Defense_Up"; _potency = "Defense_Up_Potency"; _turns_remaining  = "Defense_Up_Turns_Remaining"; break;
	        case 2: _name = "Agility_Up"; _potency = "Agility_Up_Potency"; _turns_remaining  = "Agility_Up_Turns_Remaining"; break;
	        case 3: _name = "Movement_Up"; _potency = "Movement_Up_Potency"; _turns_remaining  = "Movement_Up_Turns_Remaining"; break;
        
	        case 4: _name = "Attack_Down"; _potency = "Attack_Down_Potency"; _turns_remaining  = "Attack_Down_Turns_Remaining"; break;
	        case 5: _name = "Defense_Down"; _potency = "Defense_Down_Potency"; _turns_remaining  = "Defense_Down_Turns_Remaining"; break;
	        case 6: _name = "Agility_Down"; _potency = "Agility_Down_Potency"; _turns_remaining  = "Agility_Down_Turns_Remaining"; break;
	        case 7: _name = "Movement_Down"; _potency = "Movement_Down_Potency"; _turns_remaining  = "Movement_Down_Turns_Remaining"; break;
        
	        case 8: _name = "Flight"; _potency = "Flight_Potency"; _turns_remaining  = "Flight_Turns_Remaining"; break;
	        case 9: _name = "Poison"; _potency = "Poison_Potency"; _turns_remaining  = "Poison_Turns_Remaining"; break;
	        case 10: _name = "Paralysis"; _potency = "Paralysis_Potency"; _turns_remaining  = "Paralysis_Turns_Remaining"; break;
	        case 11: _name = "Silence"; _potency = "Silence_Potency"; _turns_remaining  = "Silence_Turns_Remaining"; break;
	        case 12: _name = "Sleep"; _potency = "Sleep_Potency"; _turns_remaining  = "Sleep_Turns_Remaining"; break;
	        case 13: _name = "Stun"; _potency = "Stun_Potency"; _turns_remaining  = "Stun_Turns_Remaining"; break;
	        case 14: _name = "Petrify"; _potency = "Petrify_Potency"; _turns_remaining  = "Petrify_Turns_Remaining"; break;
	        case 15: _name = "Bleed"; _potency = "Bleed_Potency"; _turns_remaining  = "Bleed_Turns_Remaining"; break;
	        case 16: _name = "Magic_Immunity"; _potency = "Magic_Immunity_Potency"; _turns_remaining  = "Magic_Immunity_Turns_Remaining"; break;
	        case 17: _name = "Snare"; _potency = "Snare_Potency"; _turns_remaining  = "Snare_Turns_Remaining"; break;
	        case 18: _name = "Confusion"; _potency = "Confusion_Potency"; _turns_remaining  = "Confusion_Turns_Remaining"; break;
	        case 19: _name = "Berserk"; _potency = "Berserk_Potency"; _turns_remaining  = "Berserk_Turns_Remaining"; break;
	        case 20: _name = "Curse_Suppression"; _potency = "Curse_Suppression_Potency"; _turns_remaining  = "Curse_Suppression_Turns_Remaining"; break;
        
	        default: _name = ""; _potency = ""; _turns_remaining = ""; break;
	    }
	    if((_action = "Cast_Spell")||(_action = "Use_Item")||(_action = "Word_of_Power")){
	        if(!Character_Is_Under_Effect("Local",_target,"Magic_Immunity")){//if character isnt immune to magic
	            if(Apply_Status_Effect("Local",_target,_name,Get_Effect_Stats(_effect,_effect_level,_potency,"Local",_attacker),Get_Effect_Stats(_effect,_effect_level,_turns_remaining,"Local",_attacker))){
	                _message += Global_Status_Effect_Message("Local",_target,_name,"Apply_Effect");
	                _message = string_delete(_message,string_length(_message),1);
	            }
	        }
	    }
	    else{
	        if(Get_Character_Status_Effect("Local",_attacker,_name,"Total","Infliction_Chance") > irandom_range(0,100)){
	            if(Apply_Status_Effect("Local",_target,_name,Get_Character_Status_Effect("Local",_attacker,_name,"Total","Infliction_Potency"),Get_Character_Status_Effect("Local",_attacker,_name,"Total","Infliction_Turns_Remaining"))){
	                _message += Global_Status_Effect_Message("Local",_target,_name,"Apply_Effect");
	                _message = string_delete(_message,string_length(_message),1);
	            }
	        }
	    }
	}
	//============
	//Cure Effect=
	//============
	if((_action = "Cast_Spell")||(_action = "Use_Item")||(_action = "Word_of_Power")){
	    for(i = 0; i <= 9; i+= 1){
	        switch(i){
	            case 0: _name = "Poison"; _cure = "Cure_Poison"; break;
	            case 1: _name = "Stun"; _cure = "Cure_Stun"; break;
	            case 2: _name = "Curse"; _cure = "Cure_Curse"; break;
	            case 3: _name = "Paralysis"; _cure = "Cure_Paralysis"; break;
	            case 4: _name = "Sleep"; _cure = "Cure_Sleep"; break;
	            case 5: _name = "Petrify"; _cure = "Cure_Petrify"; break;
	            case 6: _name = "Bleed"; _cure = "Cure_Bleed"; break;
	            case 7: _name = "Snare"; _cure = "Cure_Snare"; break;
	            case 8: _name = "Confusion"; _cure = "Cure_Confusion"; break;
	            case 9: _name = "Berserk"; _cure = "Cure_Berserk"; break;
            
	            default: _name = ""; _cure = ""; break;
	        }
	        //Cure effect
	        if(Character_Is_Under_Effect("Local",_target,_name)){
	            if(Get_Effect_Stats(_effect,_effect_level,_cure,"Local",_attacker)){
	                Cure_Status_Effect("Local",_target,_name);
	                _message += Global_Status_Effect_Message("Local",_target,_name,"Cure_Effect");
	                _message = string_delete(_message,string_length(_message),1);//delete last "pause break" symbol
	            }
	        }
	    }
	}

	return _message;



}
