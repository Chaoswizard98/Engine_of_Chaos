function Hit_Flash(_character,_speed = .0625,_color = c_white,_alpha = 1) {
	_character.hit_flash = true;
	_character.flash_alpha = _alpha;
	_character.hit_flash_speed = _speed;
	_character.hit_flash_color = _color;
}