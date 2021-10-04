function Fix_Overworld_Sprite_Origin(_sprite){
	//This blurb simply sets sprite origin to the center of the sprite so it can be properly rotated
	//while maintaining the correct position in the room editor
	sprite_set_offset(_sprite,sprite_get_width(_sprite)/2,sprite_get_height(_sprite)/2);//fix sprite
	return _sprite;//return sprite
}