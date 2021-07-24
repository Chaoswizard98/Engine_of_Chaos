function Update_Portrait_Controller() {
	var _controller, _portrait_ID, _dead;
	_controller = argument[0];
	_portrait_ID = argument[1];

	_dead = false;
	if(argument_count > 2){
	    _dead = argument[2];
	}

	with(_controller){//with the portrait controller, update the portrait
	    portrait = Get_Portrait(_portrait_ID,false);//portrait
	    portrait_blink = Get_Portrait(_portrait_ID,true);//blink frames
	    is_dead = _dead;//close eyes if dead
	}




}
