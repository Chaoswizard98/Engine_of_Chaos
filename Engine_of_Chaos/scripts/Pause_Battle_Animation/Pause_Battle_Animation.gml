function Pause_Battle_Animation() {
	var _object = argument[0];//object performing the animation

	_object.image_index += _object.image_speed;//note, we increase index to the next frame (GM updates next step)
	_object.image_speed = 0;//set image speed to 0



}
