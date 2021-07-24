if(allow_interaction){
    var _HUD_exists = false;
    if(Pressed_Key("Up_Button",false)||Pressed_Key("Right_Button",false)){
        if(number_of_targets > 1){
            allow_interaction = false;
            state = "Pan_Out_Target_HUD";
            current_target += 1;
            if(current_target >= number_of_targets){
                current_target = 0;
            }
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    _HUD_exists = true;
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
            if(!_HUD_exists){
                event_perform(ev_other,ev_user0);
            }
        }
    }
    else if(Pressed_Key("Down_Button",false)||Pressed_Key("Left_Button",false)){
        if(number_of_targets > 1){
            allow_interaction = false;
            state = "Pan_Out_Target_HUD";
            current_target -= 1;
            if(current_target < 0){
                current_target = number_of_targets-1;
            }
            with(obj_Battle_HUD){
                if(display_type = "Target_Selection"){
                    _HUD_exists = true;
                    Pan_Out_Battle_HUD(id,"Update_Target_Selection");
                }
            }
            if(!_HUD_exists){
                event_perform(ev_other,ev_user0);
            }
        }
    }
    else if(Pressed_Key("Cancel_Button",false)){
        allow_interaction = false;
        state = "Cancel_Button";
        with(obj_Battle_HUD){
            if(display_type = "Target_Selection"){
                _HUD_exists = true;
                Pan_Out_Battle_HUD(id,"Update_Target_Selection");
            }
        }
        if(!_HUD_exists){
            event_perform(ev_other,ev_user0);
        }
    }
    else if(Pressed_Key("Select_Button",false)||Pressed_Key("Inspect_Button",false)){
        allow_interaction = false;
        state = "Select_Button";
        event_perform(ev_other,ev_user0);
    }
}

if(run_timer){
    timer -= 1;
    if(timer <= 0){
        run_timer = false;
        event_perform(ev_other,ev_user0);
    }
}

