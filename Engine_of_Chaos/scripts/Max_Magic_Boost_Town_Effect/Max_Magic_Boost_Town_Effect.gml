function Max_Magic_Boost_Town_Effect() {
	switch(state){
	    case 1:
	        state += 1;
	        var _message = "";
	        var _boost = irandom_range(2,4);
	        _message += Get_Character_Name(lookup_type,target,"Total")+"'s maximum magic was boosted by " + string(_boost);
	        Set_Character_Max_Magic(lookup_type,target,"Add",_boost);
	        Set_Character_Magic(lookup_type,target,"Add",_boost);
        
	        if(action = "Use_Item"){//if we're using an item
	            if(Item_Degrades(lookup_type,character,item_slot,"Use_Degrade_Chance")){
	                Damage_Item(lookup_type,character,item_slot);
	            }
	            Create_Dialogue("none",Get_Voice("Use_Item"),_message,id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//otherwise, we're casting a spell
	            Create_Dialogue("none",Get_Voice("Cast_Spell"),_message,id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        Update_Character_Stats(lookup_type,character);
	        Update_Character_Stats(lookup_type,target);
	    break;
    
	    default: Default_Town_Effect(); break;
	}



}
