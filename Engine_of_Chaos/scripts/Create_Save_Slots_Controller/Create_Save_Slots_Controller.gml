function Create_Save_Slots_Controller(_current_object,_event_type){
	var _this = instance_create_layer(0,0,"UI_Instance_Layer",obj_Save_Slots_Controller);

	with(_this){
	    current_object = _current_object;
	    window_pan_direction = "in";
	    window_pan = -max_pan;
	    play_pan_sound = true;
	    event = _event_type;
    
	    var i = 0;
	    var _name,_level;
	    for (i = 0; i < number_of_menu_options; i += 1){
	        menu_locked[i] = false;
	        if(file_exists("Save_Slot_"+string(i)+".sav")){
	            ini_open("Save_Slot_"+string(i)+".sav");
	            _name = ini_read_string("Character_"+string(0),"Name",global.Name[0]);
	            _level = ini_read_real("Character_"+string(0),"Level",global.Level[0]);
	            ini_close();
	            menu_options[i] = _name + " " +Get_Menu_Display_Message("Generic","LV") + " "+ string(_level);
	        }
	        else{
	            menu_options[i] = Get_Menu_Display_Message("Generic","EMPTY");
	            if((_event_type = "Load_Game")||(_event_type = "Delete_Game")||(_event_type = "Challenges")){
	                menu_locked[i] = true;
	            }
	        }
	    }
    
	    if(_event_type = "Load_Game"){//If we're loading a game
	        number_of_menu_options += 1;//increase slots by 1
	        menu_locked[i] = false;
	        menu_options[number_of_menu_options-1] = Get_Menu_Display_Message("Generic","DELETE");//Final slot set to "delete"
	    }
    
	    for (i = 0; i< number_of_menu_options; i += 1){
	        if(!menu_locked[i]){
	            arrow_position = i;
	            if(arrow_position >= max_options_on_screen){
	                arrow_position = (max_options_on_screen - 1);
	                start_index = (i - max_options_on_screen);
	            }
	            break;
	        }
	    }
	}

	return _this;
}