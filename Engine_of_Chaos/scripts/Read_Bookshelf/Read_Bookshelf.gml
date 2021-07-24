function Read_Bookshelf() {
	//==============================================
	//Default Bookshelf / Inspectable object script=
	//==============================================
	var _message;
	_message = "";

	//=========================
	//Log witty 1 liner's here=
	//=========================

	switch(bookshelf_ID){
	    //Bookshelves
	    /*case 'How_To_Make_Game': _message = Get_Bookshelf_Messages('How_To_Make_Game','Bookshelf',string(current_object.name)); break;
	    case 'Farming_Techniques': _message = Get_Bookshelf_Messages('Farming_Techniques','Bookshelf',string(current_object.name)); break;
	    case 'Livestock_Guide': _message = Get_Bookshelf_Messages('Livestock_Guide','Bookshelf',string(current_object.name)); break;
	    case 'Ashenwood_History': _message = Get_Bookshelf_Messages('Ashenwood_History','Bookshelf',string(current_object.name)); break;
	    case 'Fire_Festival': _message = Get_Bookshelf_Messages('Fire_Festival','Bookshelf',string(current_object.name)); break;
	    case 'Wine_Guide': _message = Get_Bookshelf_Messages('Wine_Guide','Bookshelf',string(current_object.name)); break;
	    case 'Elven_Culture': _message = Get_Bookshelf_Messages('Elven_Culture','Bookshelf',string(current_object.name)); break;
    
	    //Wells
	    case 'Deep_Well': _message = Get_Bookshelf_Messages('Deep_Well','Well',string(current_object.name)); break;
	    case 'Old_Well': _message = Get_Bookshelf_Messages('Old_Well','Well',string(current_object.name)); break;
	    case 'Stone_Well': _message = Get_Bookshelf_Messages('Stone_Well','Well',string(current_object.name)); break;
	    case 'Filled_With_Water': _message = Get_Bookshelf_Messages('Filled_With_Water','Well',string(current_object.name)); break;
    
	    //Signs
	    case 'Weapon_Shop': _message = Get_Bookshelf_Messages('Weapon_Shop','Sign',string(current_object.name)); break;
	    case 'Item_Shop': _message = Get_Bookshelf_Messages('Item_Shop','Sign',string(current_object.name)); break;
    
	    //Notice Board
	    case 'Ashenwood_Inn': _message = Get_Bookshelf_Messages('Ashenwood_Inn','Notice_Board',string(current_object.name)); break;
    
	    //Doors
	    case 'Bowies_Door': _message = Get_Bookshelf_Messages('Bowies_Door','Door',string(current_object.name)); break;
	    */
	    //Area
    
	    //Default
	    default: _message = Get_Bookshelf_Messages(bookshelf_ID,object_type,string(current_object.name)); break;//Default message
	}

	//========================
	//Print the witty message=
	//========================
	switch (dialogue_state){
	    case 0:
	        Create_Dialogue("none",Get_Voice("Bookshelf"),_message,id,true,true);//portrait, voice, message, current object, arrow, auto pan, [portrait override] [voice override]
	        dialogue_state += 1;
	        break;
	    case 1:
	        dialogue_state = 0;
	        current_object.allow_interaction = true;
	        break;
	}



}
