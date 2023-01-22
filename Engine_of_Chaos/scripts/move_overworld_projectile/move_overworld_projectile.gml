function Move_Overworld_Projectile(_object, _end_x, _end_y, _speed, _end_rotation = -1){
	with(_object){
		end_x = _end_x;	
		end_y = _end_y;
		movement_speed = _speed;
		if(_end_rotation != -1){
			end_rotation = _end_rotation;
		}
		action = "Move_To_Location";
		
		//show_message(string(end_x)+ string(end_y)+ string(end_rotation)+ string(action));
		event_perform(ev_other,ev_user1);
	}
}