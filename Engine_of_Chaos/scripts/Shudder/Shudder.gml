function Shudder(_character,_iterations = 2) {
	_character.number_of_animations = (_iterations-1);//set number of times we run the animation
	_character.animation = "Shudder";//set animation to shudder
	_character.animation_direction = "down";
	_character.image_speed = 0;//freeze frame
	_character.animation_speed = 5;
}