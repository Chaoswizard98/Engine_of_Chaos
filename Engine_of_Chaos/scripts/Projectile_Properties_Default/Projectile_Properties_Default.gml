function Projectile_Stats_Default(_stat){
	var _sprite = spr_Battered_Arrow;
	var _animation_speed = 0;
	var _movement_speed = 15;
	
	switch(_stat){
		case "Sprite": return _sprite break;
	    case "Animation_Speed": return _animation_speed break;
	    case "Movement_Speed": return _movement_speed break;
	}
}

function Projectile_Create_Event_Default(_projectile,_x,_y,_path,_direction){
	var _this = instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Projectile);
	_this.projectile = _projectile;
	_this.projectile_path = _path;
	_this.projectile_direction = _direction;
	_this.start_x = _x;
	_this.start_y = _y;
	_this.state = "Start";
	with(_this){
	    event_perform(ev_other,ev_user0);
	}
	return _this;
}

function Projectile_Hit_Event_Default(_object){
	with(obj_Battle_Cutscene_Controller){
		event_perform(ev_other,ev_user0);
    }
    instance_destroy(_object);
}