if(camera_pathfinding){
    if((x_view_old = x_pos)&&(y_view_old = y_pos)){
        camera_pathfinding = false;
        if(call_cutscene){
            call_cutscene = false;
            with(obj_Cutscene_Controller){
                event_perform(ev_other,ev_user0);
            }
        }
    }
    else{
        x_view_old = x_pos;
        y_view_old = y_pos;
    }
}

