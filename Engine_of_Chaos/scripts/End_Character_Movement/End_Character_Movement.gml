function End_Character_Movement() {
	var _character = argument[0];
	var _event = argument[1];

	_character.image_speed = _character.idle_animation_speed;//return to idle speed
	Reset_Character_Depth(_character);;//reset depth
	if(_event = "End_Movement"){
	    Face_Direction(_character,"Down");//face down
	}
	Clear_Movement_Range();//disable flashing tiles




}
