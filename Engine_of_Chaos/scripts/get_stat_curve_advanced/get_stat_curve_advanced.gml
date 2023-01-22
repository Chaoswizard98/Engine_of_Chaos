function Get_Stat_Curve_Advanced(){
	var _base_level = argument[0];
	var _current_level = argument[1];
	var _base_stat = argument[2];
	var _projected_stat = argument[3];
	var _default_gains = argument[4];
	var _total_gains = _projected_stat - _base_stat;
	var _previous_level = _base_level;

	var i = 5;
	for (i = 5; i < argument_count; i += 2){
		var _end_level = argument[i];
		var _percent = argument[i+1];
		
		if(_current_level <= _end_level){
			var _gains = _total_gains * _percent;
			return _gains / (_end_level - _previous_level);
		}
		_previous_level = _end_level;
	}
	return _default_gains;
}