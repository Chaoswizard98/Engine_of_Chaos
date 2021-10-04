function Spin(_character,_iterations=2,_speed=2,_end_direction=_character.direction,_spin_direction="Clockwise"){
	_character.number_of_animations = _iterations - 1;//set number of times we run the animation
	_character.animation = "Spin";//set animation to spin
	_character.animation_speed = _speed;//speed of animation
	_character.end_direction = _end_direction;//end facing this direction
	_character.spin_direction = _spin_direction;//clockwise or counter clockwise
	_character.image_speed = 0;//freeze frame
}