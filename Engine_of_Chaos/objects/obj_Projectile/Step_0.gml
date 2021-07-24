if(is_moving){
    x_pos += x_speed;
    y_pos += y_speed;
    if(((x_pos >= end_x)&&(x_speed > 0))||((x_pos <= end_x)&&(x_speed < 0))){
        x_pos = end_x;
        y_pos = end_y;
        is_moving = false;
        event_perform(ev_other,ev_user0);
    }
}

