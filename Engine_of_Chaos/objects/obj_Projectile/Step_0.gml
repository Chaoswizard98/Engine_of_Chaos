if(is_moving){
	x_pos = Approach(x_pos,end_x,x_speed);
	y_pos = Approach(y_pos,end_y,y_speed);
	if(x_pos = end_x){
        x_pos = end_x;
        y_pos = end_y;
        is_moving = false;
        event_perform(ev_other,ev_user0);
    }
}