if(action = "Move_To_Location"){//move from point A to point B
    x_pos = Approach(x_pos,end_x,x_speed);
	y_pos = Approach(y_pos,end_y,y_speed);
	if((x_pos = end_x)&&(y_pos = end_y)){
        x_pos = end_x;
        y_pos = end_y;
		Run_Battle_Prop_Movement_End_Event(id);
    }
}
else{
    //if we trigger a new frame in the animation (or are starting a new one) see if we trigger an event
    if(((floor(image_index) != floor(image_index + image_speed))&&(current_frame != floor(image_index + image_speed)))||(current_frame = -1)){//if new frame
        current_frame = floor(image_index + image_speed);//set current frame to new frame
		Run_Battle_Prop_Animation_Event(id);
    }
    
    //if we arent looping the event, destroy the object
    if(!loop_animation){
        if(image_index >= (sprite_get_number(sprite_index)-1)){//if we are at the end of the animation
            if(call_event){//ping spell controller if needed
                call_event = false;
                with(obj_Spell_Controller){
                    event_perform(ev_other,ev_user0);
                }
            }
            instance_destroy();//destroy this object
        }
    }
}
Run_Battle_Prop_Loop_Event(id);