function Get_Stat_Gain(_lookup_type,_character,_return_stat,_current_stat,_set_average){
	var _catch_up = false;//do we correct shitty RNG this round?
	var _base_stat = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Base",Get_Character_Level(_lookup_type,_character,"Total"));
	var _gain = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Gain",Get_Character_Level(_lookup_type,_character,"Total"));
	if(!_set_average){//if we arent forcing stat alignment, check if we correct it this level
	    _catch_up = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Catch_Up",Get_Character_Level(_lookup_type,_character,"Total"));
	}
	//========================
	//Get gain based on level=
	//========================
	var _level = Get_Character_Level(_lookup_type,_character,"Derived");
	var _stat_gain = 0;
    
	if(!_set_average){//if we're forcing average, this gain doesnt matter
	    _stat_gain = floor(_gain + random(1));
	}
    
	//==================================
	//Correct Gain if we had shitty RNG=
	//==================================
	if((_set_average)||(_catch_up))
	{
	    var _suggested_gain = _base_stat;
	    var i;
	    //calculate average stat for given level
	    for(i = 1; i<_level; i+=1){
			_suggested_gain += Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Gain",i+1);
	    }
        
	    _suggested_gain = floor(_suggested_gain);//average gain for this level
        
	    if(_current_stat + _stat_gain < _suggested_gain){
	        _stat_gain = (_suggested_gain - _current_stat);
	    }
	}
    
	return _stat_gain;
}