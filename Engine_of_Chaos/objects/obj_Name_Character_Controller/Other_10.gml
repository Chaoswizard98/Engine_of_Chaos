if(state = "Backed_Out"){//if we are backing out of this menu
    UI_Cancel_Event(current_object,"Backed_Out_Of_Menu","none");
    instance_destroy();//destroy this object
}
else if(state = "Naming_Character"){
    switch(input_event){
        case "Up_Button":
            selector_position_y -= 1;
            cursor_flash_state = 0;//turn arrow on
            if(selector_position_y < 0){
                selector_position_y = 2;
            }
            //Corrections for multi-letter targeting
            if(string_char_at(characters[selector_position_y,selector_position_x],0) = "^"){
                selector_position_x = real(string_digits(characters[selector_position_y,selector_position_x]));
            }
        break;
        case "Down_Button":
            selector_position_y += 1;
            cursor_flash_state = 0;//turn arrow on
            if(selector_position_y > 2){
                selector_position_y = 0;
            }
            //Corrections for multi-letter targeting
            if(string_char_at(characters[selector_position_y,selector_position_x],0) = "^"){
                selector_position_x = real(string_digits(characters[selector_position_y,selector_position_x]));
            }
        break;
        case "Left_Button":
            cursor_flash_state = 0;//turn arrow on
            if(string_length(characters[selector_position_y,selector_position_x]) = 3){
                selector_position_x -= 2;//go to del
            }
            else{
                selector_position_x -= 1;
            }
            if(selector_position_x < 0){
                selector_position_x = 25;
            }
            //Corrections for multi-letter targeting
            if(string_char_at(characters[selector_position_y,selector_position_x],0) = "^"){
                selector_position_x = real(string_digits(characters[selector_position_y,selector_position_x]));
            }
            if(current_character = max_letters){
                selector_position_x = 19;
            }
        break;
        case "Right_Button":
            cursor_flash_state = 0;//turn arrow on
            if(string_length(characters[selector_position_y,selector_position_x]) = 3){
                selector_position_x += 4;//go to end
            }
            else{
                selector_position_x += 1;
            }
            if(selector_position_x > 25){
                selector_position_x = 0;
            }
            //Corrections for multi-letter targeting
            if(string_char_at(characters[selector_position_y,selector_position_x],0) = "^"){
                selector_position_x = real(string_digits(characters[selector_position_y,selector_position_x]));
            }
            if(current_character = max_letters){
                selector_position_x = 23;
            }
        break;
        case "Select_Button":
            Play_Sound(sfx_Menu_Select);
            if(characters[selector_position_y,selector_position_x] = "DEL"){
                if(current_character!= 0){
                    name[current_character -1] = "";
                    current_character -= 1;
                }
            }
            else if(characters[selector_position_y,selector_position_x] = "END"){
                if(current_character = 0){//if we have not given a name, use default
                    completed_name = default_name;
                }
                else{//else, name the character
                    for(i=0; i<current_character; i+=1){
                        completed_name += name[i];
                    }
                }
                allow_interaction = false;
                window_pan_direction = "out";
                if(portrait_controller != noone){ 
                    portrait_controller.pan_direction = "out";
                }
                state = "Finished_Naming_Character";
                play_pan_sound = true;
            }
            else{
                name[current_character] = characters[selector_position_y,selector_position_x];
                current_character += 1;
                if(current_character = max_letters){//set to end
                    selector_position_x = 23;
                    selector_position_y = 2;
                }
            }
        break;
        case "Cancel_Button":
            allow_interaction = false;
            window_pan_direction = "out";
            if(portrait_controller != noone){ 
                portrait_controller.pan_direction = "out";
            }
            state = "Backed_Out";
            play_pan_sound = true;
        break;
    }
}
else if(state = "Finished_Naming_Character"){//if we are set to destroy
    current_object.new_character_name = completed_name;//remember what name we've just provided
    UI_Cancel_Event(current_object,"Named_Character","none");
    instance_destroy();
}

