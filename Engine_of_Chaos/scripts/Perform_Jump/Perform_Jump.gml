function Perform_Jump(_character,_iterations,_speed = 2){
	_character.number_of_animations = (_iterations -1);//set timer
	_character.animation = "Jump";//set animation to jump
	_character.animation_speed = _speed;//set animation speed
	_character.animation_direction = "up";//set jump direction
	_character.image_speed = 0;//freeze frame
}