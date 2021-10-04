function Town_Effect_Detox() {
	switch(state){
	    case 1:
	        state += 1;
	        var _message = "";
	        var _valid_effect = false;
	        if(Character_Is_Under_Effect(lookup_type,target,"Poison")){
	            _valid_effect = true;
	            Cure_Status_Effect(lookup_type,target,"Poison");
	            _message += Global_Status_Effect_Message(lookup_type,target,"Poison","Cure_Effect");
	        }
	        if((effect_level >= 2) && Character_Is_Under_Effect(lookup_type,target,"Stun")){
	            _valid_effect = true;
	            Cure_Status_Effect(lookup_type,target,"Stun");
	            _message += Global_Status_Effect_Message(lookup_type,target,"Stun","Cure_Effect");
	        }
	        if((effect_level >= 3) && Character_Is_Cursed(lookup_type,target)){
	            _valid_effect = true;
	            Remove_Cursed_Equipment(lookup_type,target);
	            _message += Get_General_Messages("Default_Church","No_Longer_Cursed",Get_Character_Name(lookup_type,target,"Total"));
	        }
        
	        if(_message != ""){
	            _message = string_delete(_message,string_length(_message),1);//delete last pause break character
	            _message = string_delete(_message,1,1);//delete first line break character
	        }
	        if(!_valid_effect){
	            _message = "But nothing happens.";
	        }
        
        
        
        
	        if(action = "Use_Item"){//if we're using an item
	            if(_valid_effect && Item_Degrades(lookup_type,character,item_slot,"Use_Degrade_Chance")){
	                Damage_Item(lookup_type,character,item_slot);
	            }
	            Create_Dialogue(noone,Get_Generic_Voice("Use_Item"),_message,id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//otherwise, we're casting a spell
	            Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"),_message,id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        Update_Character_Stats(lookup_type,character);
	        Update_Character_Stats(lookup_type,target);
	    break;
    
	    default: Default_Town_Effect(); break;
	}
}