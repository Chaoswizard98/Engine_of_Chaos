function Set_Character_Location(_character,_x,_y,_direction,_cutscene_mode = false){
	with(_character){
		x = _x;
		y = _y;
		Face_Direction(_character,_direction);
		cutscene_mode = _cutscene_mode;
		moving = false;
		speed_x = 0;
		speed_y = 0;
	}
}