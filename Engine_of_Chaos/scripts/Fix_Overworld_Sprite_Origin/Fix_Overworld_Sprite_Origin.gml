function Fix_Overworld_Sprite_Origin(argument0) {
	//This blurb simply sets sprite origin to the center of the sprite so it can be properly rotated
	//while maintaining the correct position in the room editor

	//argument0: sprite we're fixing
	sprite_set_offset(argument0,sprite_get_width(argument0)/2,sprite_get_height(argument0)/2);//fix sprite

	return argument0;//return sprite



}
