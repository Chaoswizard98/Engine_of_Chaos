function Town_Effect_Forbidden_Box() {
	switch(state){
	    case 1:
	        state += 1;
	        var _message = "Everyone has unlocked their full potential.";
	        var i = 0;
	        var _faction = Get_Character_Faction(lookup_type,target,"Total");
        
	        if(lookup_type = "Global"){
	            for(i = 0; i< global.Number_Of_Characters; i+=1){//loop through all characters
	                if(global.Faction[i] = _faction){//if character is a member of the faction we're displaying
	                    while(Get_Character_Level(lookup_type,i,"Derived") < global.Level_Cap){
	                        Level_Up(lookup_type,i,false);
	                    }
	                    Set_Character_Health(lookup_type,i,"Set",Get_Character_Max_Health(lookup_type,i,"Base"));
	                    Set_Character_Magic(lookup_type,i,"Set",Get_Character_Max_Magic(lookup_type,i,"Base"));
	                }
	            }
	        }
	        else if(lookup_type = "Local"){
	            with(obj_Character){
	                if(faction = _faction){
	                    while(Get_Character_Level(lookup_type,id,"Derived") < global.Level_Cap){
	                        Level_Up(lookup_type,id,false);
	                    }
	                    Set_Character_Health(lookup_type,id,"Set",Get_Character_Max_Health(lookup_type,id,"Base"));
	                    Set_Character_Magic(lookup_type,id,"Set",Get_Character_Max_Magic(lookup_type,id,"Base"));
	                }
	            }
	        }
        
	        if(action = "Use_Item"){//if we're using an item
	            if(Item_Degrades(lookup_type,character,item_slot,"Use_Degrade_Chance")){
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