if(state = "End_Start_Pan"){
    event_perform(ev_other,ev_user0);
}
else{
    //==========
    //Main Loop=
    //==========
    if(camera_action = "Default"){
        if(camera_state = "Pan_Out_All_Characters"){
            var _continue_pan = true;
            Pan_Battle_Cutscene_Character(Get_Battle_Cutscene_Character(camera_old_target),"out");//pan out target
            with(obj_Battle_Cutscene_Character){//loop through all units
                if(on_screen){
                    if(character != obj_Battle_Cutscene_Controller.camera_old_target){//if not the current unit
                        obj_Battle_Cutscene_Controller.camera_old_target = character;//pan this out next time
                        _continue_pan = false;
                        break;
                    }
                }
            }
            if(_continue_pan){
                camera_state = "Background_Transition";
            }
        }
        else if(camera_state = "Pan_Out_Character"){//pans out the old target
            Pan_Battle_Cutscene_Character(Get_Battle_Cutscene_Character(camera_old_target),"out");//pan out target
            camera_state = "Pan_Out_Character_2";
        }
        else if(camera_state = "Pan_Out_Character_2"){//Check for lingering character (case of AoE hitting both enemies and allies)
            var _new_target = Get_Battle_Cutscene_Character(camera_target);
            var _perform_event = true;
            with(obj_Battle_Cutscene_Character){//loop through all units
                if(on_screen){//if they're on screen,
                    if((location = _new_target.location)||(position = _new_target.position)){//if same location as new target
                        Pan_Battle_Cutscene_Character(id,"out");//pan out target
                        _perform_event = false;
                    }
                    break;
                }
            }
            camera_state = "Background_Transition";
            if(_perform_event){
                event_perform(ev_other,ev_user1);
            }
        }
        else if(camera_state = "Background_Transition"){
            if(pan_direction = "Left"){//Left transition
                old_background_sprite = background_sprite;
                background_sprite = Get_Terrain_Stats(Get_Battle_Background(Get_Battle_Cutscene_Character(camera_target), noone),"Background_Sprite");
                x_pan = max_x_pan;
                pan_camera = true;
            }
            else if(pan_direction = "Right"){//Right transition
                old_background_sprite = background_sprite;
                background_sprite = Get_Terrain_Stats(Get_Battle_Background(Get_Battle_Cutscene_Character(camera_target), noone),"Background_Sprite");
                x_pan = -(max_x_pan);
                pan_camera = true;
            }
            else{//no transition
                camera_state = "Pan_In_Character";
                event_perform(ev_other,ev_user1);
            }
        }
        else if(camera_state = "Pan_In_Character"){
            Pan_Battle_Cutscene_Character(Get_Battle_Cutscene_Character(camera_target),pan_type);
            camera_state = "Finished_Pan";
        }
        else if(camera_state = "Finished_Pan"){
            camera_action = "none";
            camera_state = "none";
            event_perform(ev_other,ev_user0);
        }
    }
}

