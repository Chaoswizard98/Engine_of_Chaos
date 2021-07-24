function Cross_Menu_Move() {
	//This function is called when a directional arrow is pressed on a cross menu
	//Note, you can switch display_type if you have custom menu moves (for different sized menus)
	var _menu_type = argument[0];

	var _previous_index = current_index;
	if(display_type != "Inventory_Icons"){
	    menu_animated[current_index] = 0;//disable animation for old selection
	}
	switch(input_event){
	    case "Up_Button": 
	        current_index = 0;//move selection to new target
	    break;
	    case "Left_Button": 
	        current_index = 1;//move selection to new target
	    break;
	    case "Right_Button": 
	        current_index = 2;//move selection to new target
	    break;
	    case "Down_Button": 
	        current_index = 3;//move selection to new target
	    break;
	}
	if(display_type != "Inventory_Icons"){
	    if(menu_name[current_index] = "none"){
	        current_index = _previous_index;
	    }
	    image_index = (sprite_get_number(menu_sprite[current_index])-1);
	    menu_animated[current_index] = -1;//animate current target
	}
	else{
	    if(_menu_type = "Items"){
	        if(Get_Item("Local",current_character,inventory_slot[current_index]) = "none"){
	            current_index = _previous_index;
	        }
	    }
	    else if(_menu_type = "Magic"){
	        if(Get_Spell("Local",current_character,inventory_slot[current_index]) = "none"){
	            current_index = _previous_index;
	        }
	    }
	    image_index = 0;
	}
	Play_Sound(sfx_Menu_Move);



}
