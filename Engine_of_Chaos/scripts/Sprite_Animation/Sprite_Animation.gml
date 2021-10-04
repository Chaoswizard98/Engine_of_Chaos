function Sprite_Animation(_character,_sprite,_iterations=0,_speed=.0625,_hide_character=true,_freeze_last_frame = false){
	if(_iterations >0){
		_iterations -= 1;	
	}
	_character.animation_speed = _speed;//set draw speed
	_character.animation = "Sprite_Animation";//set sprite animation
	_character.number_of_animations = _iterations;//number of iterations
	_character.animation_frame = 0;//reset frame to 0
	_character.animation_sprite = _sprite;//set sprite to draw
	_character.hide_character = _hide_character;//do we show or hide the character
	_character.freeze_last_frame = _freeze_last_frame;
	_character.image_speed = 0;//freeze frame
}