function Brave_Apple_Town_Effect() {
	switch(state){
	    case 1:
	        state += 1;
	        var _message = "";
	        var _valid_effect = true;
	        _message += Level_Up(lookup_type,target,false);
	        if(!Character_Is_Dead(lookup_type,target)){
	            Set_Character_Health(lookup_type,target,"Set",Get_Character_Max_Health(lookup_type,target,"Base"));
	        }
	        Set_Character_Magic(lookup_type,target,"Set",Get_Character_Max_Magic(lookup_type,target,"Base"));
        
	        if(_message = ""){
	            _valid_effect = false;
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
