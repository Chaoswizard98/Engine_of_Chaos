function Create_Projectile() {
	var _projectile = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _projectile_path = argument[3];
	var _projectile_direction = argument[4];
	var _this = noone;

	if(_projectile != "none"){//create only if we have a valid projectile
	    //switch(_projectile){
	        //case 'Tornado': _this = instance_create_layer(obj_Projectile_Tornado,x,y); break;
	        //default: _this = instance_create_layer(0,0,obj_Projectile); break;
	        _this = Get_Projectile_Stats(_projectile,"Object");//creates the actual projectile object
	    //}
	    _this.projectile = _projectile;
	    _this.projectile_path = _projectile_path;
	    _this.projectile_direction = _projectile_direction;
	    _this.start_x = _start_x;
	    _this.start_y = _start_y;
	    _this.state = "Start";
	    with(_this){
	        event_perform(ev_other,ev_user0);
	    }
	}

	return _this;



}
