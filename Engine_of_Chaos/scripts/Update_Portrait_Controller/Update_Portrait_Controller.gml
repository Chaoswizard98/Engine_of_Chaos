function Update_Portrait_Controller() {
	var _controller, _portrait, _dead;
	_controller = argument[0];
	_portrait = argument[1];

	_dead = false;
	if(argument_count > 2){
	    _dead = argument[2];
	}

	with(_controller){//with the portrait controller, update the portrait
	    portrait = _portrait;
		portrait_blink = noone;
	    if(portrait != noone){
			if(sprite_exists(asset_get_index(sprite_get_name(_portrait)+"_Blink"))){
				portrait_blink = asset_get_index(sprite_get_name(_portrait)+"_Blink");
			}
		}
	    is_dead = _dead;//close eyes if dead
	}




}
