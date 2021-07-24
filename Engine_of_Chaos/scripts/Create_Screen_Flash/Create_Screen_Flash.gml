function Create_Screen_Flash() {
	var _color = argument[0];
	var _start = argument[1];
	var _direction = argument[2];
	var _iterations = argument[3];
	var _speed = argument[4];
	var _min = argument[5];
	var _max = argument[6];
	var _current_object = argument[7];

	var _this = instance_create_layer(0,0,"Screen_Effect_Instance_Layer",obj_Screen_Flash_Controller);

	with(_this){
	    flash_color = _color;
	    flash_timer = _start;
	    flash_direction = _direction;
	    iterations = _iterations;
	    flash_speed = _speed;
	    flash_min = _min;
	    flash_max = _max;
	    if(_current_object != noone){
	        current_object = _current_object;
	    }
	}



}
