function Create_Overworld_Projectile(_x,_y,_sprite,_animation_speed,_rotation){
	var _object = instance_create_layer(_x,_y,"Game_Object_Overlay_Instance_Layer",obj_Overworld_Projectile);
	_object.sprite_index = _sprite;
	_object.animation_speed = _animation_speed;
	_object.rotation = _rotation;
	
	return _object;
}