function Create_Screen_Flash(_color,_start,_direction,_iterations,_speed,_min,_max,_current_object){
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