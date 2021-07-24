function Character_Is_Cursed() {
	//checks to see if a character is cursed
	var _lookup_type = argument[0];
	var _character = argument[1];
	var i = 0;

	if(_lookup_type = "Global"){
	    for(i = 0; i< global.Number_Of_Equipment_Slots; i+=1){//loop through equipment
	        if(Get_Equipped_Item_Stats(_lookup_type,_character,i,"Curse_Type")!= "none"){//if the item causes curse effect
	            return true;
	        }
	    }
	}
	else if(_lookup_type = "Local"){
	    for(i = 0; i< global.Number_Of_Equipment_Slots; i+=1){//loop through equipment
	        if(Get_Equipped_Item_Stats(_lookup_type,_character,i,"Curse_Type")!= "none"){//if the item causes curse effect
	            return true;
	        }
	    }
	}


	return false;



}
