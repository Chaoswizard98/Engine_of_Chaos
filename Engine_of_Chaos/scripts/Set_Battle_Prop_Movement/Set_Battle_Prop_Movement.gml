function Set_Battle_Prop_Movement(_prop,_x,_y,_speed){
	with(_prop){
		end_x = _x;
		end_y = _y;
		movement_speed = _speed;
		action = "Move_To_Location";
		event_perform(ev_other,ev_user1);
	}
}