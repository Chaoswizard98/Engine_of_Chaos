function Fade_Character(_character,_speed=.0625,_end_alpha=1,_start_alpha=_character.alpha) {
	_character.number_of_animations = 1;
	_character.alpha = _start_alpha;//set initial alpha
	_character.animation_speed = _speed;//set draw speed
	_character.end_alpha = _end_alpha;//set draw speed
	_character.animation = "Fade_Character";//set sprite animation
}