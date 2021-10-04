function Shake_Head(_character,_iterations = 25,_speed = 2){
	_character.number_of_animations = _iterations;//set timer
	_character.animation = "Shake_Head";//set animation to shudder
	_character.animation_direction = "left";//start head shake in left direction
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = _speed;//animation speed
}