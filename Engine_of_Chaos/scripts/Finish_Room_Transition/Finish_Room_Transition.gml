function Finish_Room_Transition() {
	//Finishes a room transition when player not present (such as battle start)
	//Or when some custom event happens and you dont have a player available
	var _current_object = argument[0];
	if(_current_object = noone){
	    instance_destroy(obj_Room_Transition_Controller);
	}
	else{
	    with(obj_Room_Transition_Controller){   
	        current_object = _current_object;
	        global.Player_ID = player_ID;
	        Create_Screen_Fade(c_black,1,0,.04,"in",id);//color, start, end, speed, direction, object
	    }
	}



}
