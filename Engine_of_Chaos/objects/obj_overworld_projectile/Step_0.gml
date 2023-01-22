if(action = "Move_To_Location"){//move from point A to point B
    x = Approach(x,end_x,x_speed);
	y = Approach(y,end_y,y_speed);

	rotation = Approach(rotation,end_rotation,rotation_speed);

	if((x = end_x)&&(y = end_y)){
        x = end_x;
        y = end_y;
		rotation = end_rotation;
		action = "none";
		event_perform(ev_other,ev_user0);
    }
}

if(animation = "Fade"){
	if(alpha <= end_alpha){//if we're fading in
	    alpha += fade_speed;//increase alpha
	    if(alpha >= end_alpha){
	        alpha = end_alpha;//set alpha to final alpha
			animation = "none";
			event_perform(ev_other,ev_user0);
	    }
	}
	else{//if we're fading out
	    alpha -= fade_speed;//increase alpha
	    if(alpha <= end_alpha){
	        alpha = end_alpha;//set alpha to final alpha
			animation = "none";
			event_perform(ev_other,ev_user0);
	    }
	}	
}