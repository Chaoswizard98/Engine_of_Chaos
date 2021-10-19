function Pause_Battle_Animation(_object){
	_object.image_index += _object.image_speed;//note, we increase index to the next frame (GM updates next step)
	_object.image_speed = 0;//set image speed to 0
}
