if(Pressed_Key("Full_Screen_Button",false)){
    global.Full_Screen = !global.Full_Screen;
    window_set_fullscreen(global.Full_Screen);
}
var _target_x = x_pos;
var _target_y = y_pos;
if(!halt_x_movement){
    _target_x = max(min(camera_target.x+x_offset - (Get_Camera_Width()/2),(room_width - Get_Camera_Width())),0);
}
if(!halt_y_movement){
    _target_y = max(min(camera_target.y+y_offset - (Get_Camera_Height()/2),(room_height - Get_Camera_Height())),0);
}

//================
//Camera Movement=
//================
if(camera_speed = -1){
    x_pos = _target_x;
    y_pos = _target_y;
}
else{
    if(x_pos > _target_x){
        x_pos -= camera_speed;
        if(x_pos < _target_x){
            x_pos = _target_x;
        }
    }
    else if(x_pos < _target_x){
        x_pos += camera_speed;
        if(x_pos > _target_x){
            x_pos = _target_x;
        }
    }
    
    if(y_pos > _target_y){
        y_pos -= camera_speed;
        if(y_pos < _target_y){
            y_pos = _target_y;
        }
    }
    else if(y_pos < _target_y){
        y_pos += camera_speed;
        if(y_pos > _target_y){
            y_pos = _target_y;
        }
    }
}
//================
//Test For Border=
//================

if(!camera_pathfinding){//dont autosnap to view target if we're in a cutscene
    if(camera_target.x+x_offset < (x_pos + x_border)){
        x_pos = max(min(camera_target.x+x_offset - x_border,(room_width - Get_Camera_Width())),0);
    }
    if(camera_target.x+x_offset > (x_pos + Get_Camera_Width() - x_border)){
        x_pos = max(min(camera_target.x+x_offset - Get_Camera_Width() + x_border,(room_width - Get_Camera_Width())),0);
    }
    
    if(camera_target.y+y_offset < (y_pos + y_border)){
        y_pos = max(min(camera_target.y+y_offset - y_border,(room_height - Get_Camera_Height())),0);
    }
    if(camera_target.y+y_offset > (y_pos + Get_Camera_Height() - y_border)){
        y_pos = max(min(camera_target.y+y_offset - Get_Camera_Height() + y_border,(room_height - Get_Camera_Height())),0);
    }
}

if(shake_timer != 0){
    if(shake_timer > 0){//test for 0 because negetives mean infinite shake
        shake_timer -= 1;
        if(shake_timer <= 0){//if end of loop
            shake_x = 0;//reset shake
            shake_y = 0;
            shake_power_x = 0;
            shake_power_y = 0;
            shake_timer = 0;
            if(call_cutscene){
                call_cutscene = false;
                with(obj_Cutscene_Controller){
                    event_perform(ev_other,ev_user0);
                }
            }
        }
    }
    if(shake_timer != 0){//if not end of loop, shake screen
        shake_x = random_range(-shake_power_x,shake_power_x);
        shake_y = random_range(-shake_power_y,shake_power_y);
    }
    
}

//Adjust for screen shake
Set_Camera_X(round(max(min(x_pos+shake_x,(room_width - Get_Camera_Width())),0)));
Set_Camera_Y(round(max(min(y_pos+shake_y,(room_height - Get_Camera_Height())),0)));

