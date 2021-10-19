//================//
//=Panning Stuff =//
//================//
if(pan_direction != "none"){
    //==Panning In==//
    if(pan_direction = "in"){ //Pan Dialogue Window In
        window_pan -= (max_pan / pan_speed);
        if(window_pan <= 0){
            window_pan = 0;
            pan_direction = "none";
            printing = true;//Start printing dialogue.
        }
    }
    
    //==Panning Out==//
    else if(pan_direction = "out"){ //Pan Dialogue Window Out
        window_pan += (max_pan / pan_speed);
        if(window_pan >= max_pan + (max_pan / pan_speed)){
            window_pan = max_pan;
            pan_direction = "none";
            event_perform(ev_other,ev_user0);
            instance_destroy();
        }
    } 
}

//===================//
//= Scrolling Stuff =//
//===================//
else if (scrolling){
    y_scroll -= 2;
    if(y_scroll <= 0){
        y_scroll = 0;
        scrolling = false;
        alarm[0] = 1;
    }
}

//=====================//
//Ending Message Delay=//
//=====================//
if(ending_message){
    end_message_delay -= 1;
    if(end_message_delay <= 0){
        ending_message = false;
        if(auto_pan_out){
            Pan_Out_Dialogue();
        }
        else{
            event_perform(ev_other,ev_user0);
        }
    }
}

//==================//
//= Continue Stuff =//
//==================//
else if(!printing){//if current character is more than the amount in the current message (if we are at the end of the message)
    if(display_arrow||wait_for_input){//Arrow flash timer
        arrow_timer -= 1;
        if(arrow_timer <= 0 ){
            if(arrow_state = 1){
                arrow_state = 0;//turn arrow off
                arrow_timer = 20;
            }
            else{
                arrow_state = 1;//turn arrow on
                arrow_timer = 20;
            }
        }
    }
    if((keyboard_check(global.Inspect_Button)||keyboard_check(global.Select_Button)||force_end)&&(allow_interaction)){ //if we press Continue...
        if(wait_for_input){//if we're continuing the message print
            wait_for_input = false;//no longer waiting for input
            printing = true;//continue printing
            if(portrait_controller != noone){
                portrait_controller.talking = false;
            }
            Play_Sound(sfx_Menu_Select);
        }
        else{//otherwise we're done with dialogue
            if(characters >= message_length){
                allow_interaction = false;
                ending_message = true;
                if(display_arrow){//ding only when arrow is displayed
                    Play_Sound(sfx_Menu_Select);
                }
            }
        }
    }
}

//Takes care of printing out the message letter by letter based on speed.
if(printing){
    print_delay -= 1;
    if(print_delay <= 0){
        if(!scrolling){
        
            var chat_speed, temp, hold;
            hold = min(keyboard_check(global.Inspect_Button)+keyboard_check(global.Select_Button)+keyboard_check(global.Cancel_Button)+keyboard_check(global.Up_Button)+keyboard_check(global.Down_Button)+keyboard_check(global.Left_Button)+keyboard_check(global.Right_Button)+keyboard_check(global.Inspect_Button),1) * allow_speed_up; //hold is true or false if we hold 'Z' or not and if we allow the player to speed up text.
            chat_speed = (global.Dialogue_Speed+(2*hold)); //increase speed based on hold
            prints_per_step = max((chat_speed -5),1);//print out x letters per step based on speed. Minimum value of 1 
            temp = "";//default to empty, just so tests dont break
            
            while(prints_per_step > 0){
            prints_per_step -= 1;
            
                if (characters < message_length){ //if current character count is less than the amount in current message
                    characters += 1; //Display a new letter.
                    
                    if(string_char_at(message,characters) = "\\"){//In case we want to print out # or @ or ^ as a symbol instead of newline / perform action / half second delay
                        if((string_char_at(message,characters+1) = "@")|| (string_char_at(message,characters+1) = "%")||  (string_char_at(message,characters+1) = "^")){
							if((string_char_at(message,characters+1) = "@")|| (string_char_at(message,characters+1) = "%")||  (string_char_at(message,characters+1) = "^")){
                                message = string_delete(message,characters,1);//delete the \ symbol if not newline character
                            }
                            else{
                                characters += 1;
                            }
                            message_draw = string_copy(message,0,characters); //copy string to current character
                            prints_per_step += 1;
                            continue;
                        }
                    }
                    
                    message_draw = string_copy(message,0,characters); //copy string to current character
                    
                    if(portrait_controller != noone){
                        portrait_controller.talk_speed = chat_speed;
                    }
                    
                    temp = string_char_at(message_draw,characters);//the last letter in the message
                    
                    if(temp = "@"){//If we have an action, then break and call the event. (For things like pauses, ect.)
                        message_draw = string_delete(message_draw,characters,1);
                        message = string_delete(message,characters,1);
                        message_length = string_length(message); //get the number of characters in the first message
                        characters -= 1;
                        printing = false;
                        allow_interaction = false;
                        if(portrait_controller != noone){
                            portrait_controller.talking = false;
                        }
                        
                        with(current_object){
                            event_perform(ev_other,ev_user15);
                        }
                        exit;//===========
                    }
                    else if(temp = "^"){// the '^' symbol will delay the dialogue for half a second.
                        message_draw = string_delete(message_draw,characters,1);
                        message = string_delete(message,characters,1);
                        message_length = string_length(message); //get the number of characters in the first message
                        characters -= 1;
                        sound_delay = 1;//play beep when we return
                        if(portrait_controller != noone){
                            portrait_controller.talking = false;
                        }
                        print_delay = 30; 
                        prints_per_step = 0;
                        exit;
                    }
                    else if(temp = "%"){// the '%' symbol will delay the dialogue until user input
                        message_draw = string_delete(message_draw,characters,1);
                        message = string_delete(message,characters,1);
                        message_length = string_length(message); //get the number of characters in the first message
                        characters -= 1;
                        sound_delay = 1;//play beep when we return
                        if(portrait_controller != noone){
                            portrait_controller.talking = false;
                        }
                        wait_for_input = true;
                        printing = false;
                        allow_interaction = true;
                        prints_per_step = 0;
                        continue;
                    }
                    
                    
                    else{//if no event, continue with the other stuff
                        if(temp = "\n"){//If we have more than 3 lines, Delete the first and pan the message up a line.
                            line_number += 1;
                            if(line_number = 4){
                                line_number -= 1;
                                var characters_to_remove, index;
                                characters_to_remove = 0;
                                index = string_char_at(message_draw,characters_to_remove);//the last letter in the message
                                
                                while(index != "\n"){
                                    /*if(index = "\\"){//if we run into the \ symbol
                                        if(string_char_at(message_draw,characters_to_remove+1) = "#"){//if the next is an overwritten newline,
                                            characters_to_remove += 1;//dont break here.
                                        }
                                    }*/
                                    characters_to_remove += 1;
                                    index = string_char_at(message_draw,characters_to_remove);//the last letter in the message
                                }
                                
                                message_draw = string_delete(message_draw,1,characters_to_remove);
                                message = string_delete(message,1,characters_to_remove);
                                message_length=string_length(message); //get the number of characters in the first message
                                characters -= characters_to_remove;
                                //Scrolling Stuff
                                scrolling = true;
                                y_scroll = 10;
                                prints_per_step = 0;
                                //===============
                            }
                        }
                       
                        if((temp != " ")&&(temp != "\n")&&(temp != ".")){//Dont "talk" for spaces or newlines, or periods
                            if(portrait_controller != noone){
                                portrait_controller.talking = true;
                            }
                        }
                        else{
                            if(portrait_controller != noone){
                                portrait_controller.talking = false;
                            }
                        }
                        
                        if(characters >= message_length){//if end of message, stop talking
                            printing = false;
                            if(portrait_controller != noone){
                                portrait_controller.talking = false;
                            }
                        }
                    }
                }
            } 
            //This junk basically just spreads out the bleeps at higher speeds so you dont get a memory error. 
            if((temp = " ")||(temp = "\n")||(temp = "^")||(temp = "%")){//Dont play bleeps for spaces or newlines, Play the sound directly afterwords
               sound_delay = 1;
            }
            else if(sound_delay != 0){
               sound_delay -= 1;
            }
            if((sound_delay <= 0)||((chat_speed > 6 && sound_delay <= 1))){
                //Get Sound to play script.
                if(voice != noone){
                    audio_stop_sound(voice);
                    Play_Sound(voice);
                    //Play_Sound(voice);
                }
                switch(chat_speed){
                    case 1: sound_delay = 0; break;
                    case 2: sound_delay = 0; break;
                    case 3: sound_delay = 1; break;
                    case 4: sound_delay = 2; break;
                    case 5: sound_delay = 3; break;
                    case 6: sound_delay = 4; break;
                    default: sound_delay = 4; break;
                }
            }
            
            //Display a new letter in x steps based on speed.
            switch(chat_speed){
                case 1: print_delay = 6; break;
                case 2: print_delay = 5; break;
                case 3: print_delay = 4; break;
                case 4: print_delay = 3; break;
                case 5: print_delay = 2; break;
                case 6: print_delay = 1; break;
                default: print_delay = 1; break;
            }
        }
    }
}





