function Default_Town_Effect() {
	switch(state){
	    case 0:
	        state += 1;
	        if(action = "Use_Item"){//if we're using an item
	            Create_Dialogue(noone,Get_Generic_Voice("Use_Item"), Get_Character_Name(lookup_type,target,"Total") + " uses the " + Get_Item_Stats(item,"Item_Name",lookup_type,character) + ".",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//otherwise, we're casting a spell
	            Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"), Get_Character_Name(lookup_type,character,"Total") + " casts " + string(spell) + " level " + string(spell_level) + ".",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
    
	    case 1:
	        state += 1;
	        if(action = "Use_Item"){//if we're using an item
	            Create_Dialogue(noone,Get_Generic_Voice("Use_Item"),"But nothing happens.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	        else{//otherwise, we're casting a spell
	            Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"),"But nothing happens.",id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        }
	    break;
    
	    case 2:
	        state += 1;
	        with(current_object){
	            event_perform(ev_other,ev_user0);
	        }
	        instance_destroy();//destroy self.
	    break;
	}



}
