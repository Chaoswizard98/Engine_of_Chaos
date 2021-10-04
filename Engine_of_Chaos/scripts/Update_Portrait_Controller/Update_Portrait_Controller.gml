function Update_Portrait_Controller(_controller,_portrait,_dead = false){
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