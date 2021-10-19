switch(state){
    //======
    //Start=
    //======
    case "Start": 
        sprite_index = Get_Projectile_Stats(projectile,"Sprite");
        image_speed = Get_Projectile_Stats(projectile,"Animation_Speed");
        movement_speed = Get_Projectile_Stats(projectile,"Movement_Speed");
        state = "End_Of_Path_1";
        
        if(projectile_direction = "Right"){
            mirror = -1;
        }
        
        //Set End Location
        if(projectile_path = "Default"){
            if(projectile_direction = "Left"){
                end_x = offscreen_left_x;
            }
            else{
                end_x = offscreen_right_x;
            }
            end_y = start_y;
        }
        if(projectile_path = "Default_Melee"){
            end_x = start_x;
            end_y = start_y;
        }
        else if(projectile_path = "Arc"){
            end_x = arc_x;
            end_y = arc_y;
            if(projectile_direction = "Left"){
                rotation = -arc_rotation;
            }
            else{
                rotation = arc_rotation;
            }
        }

        event_perform(ev_other,ev_user1); 
    break;
    //==========
    //Offscreen=
    //==========
    case "End_Of_Path_1"://projectile off screen, wait for re-entry
        state = "Re_Entry";
        with(obj_Battle_Cutscene_Controller){
            event_perform(ev_other,ev_user0);
        }
    break;
    //=========
    //Re-Entry=
    //=========
    case "Re_Entry":
        //Set Start / End Locations
        if(projectile_path = "Default"){
            if(projectile_direction = "Left"){
                start_x = offscreen_right_x;
            }
            else{
                start_x = offscreen_left_x;
            }
        }
        else if(projectile_path = "Arc"){
            start_x = x_pos;
            start_y = y_pos;
            if(projectile_direction = "Left"){
                rotation = arc_rotation;
            }
            else{
                rotation = -arc_rotation;
            }
        }
		
        var _target = Get_Battle_Cutscene_Character(obj_Battle_Cutscene_Controller.target);
		end_x = Get_Battle_Cutscene_Character_Draw_Location(_target,"X_Pos",0);
		end_y = Get_Battle_Cutscene_Character_Draw_Location(_target,"Y_Pos",0)-30;
        event_perform(ev_other,ev_user1);
        
        state = "End_Of_Path_2";
    break;
    //===========
    //Hit_Target=
    //===========
    case "End_Of_Path_2":
		Run_Battle_Cutscene_Projectile_Event("Hit",id);
    break;
}