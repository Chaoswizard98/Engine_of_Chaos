function Has_Existing_Save() {
	var i;
	for(i = 0; i < global.Number_Of_Save_Slots; i += 1){//Loop through all save slots
	    if(file_exists("Save_Slot_"+string(i)+".sav")){//if a save exists,
	        return true;//return true
	    }
	}
	return false;//no save exists



}
