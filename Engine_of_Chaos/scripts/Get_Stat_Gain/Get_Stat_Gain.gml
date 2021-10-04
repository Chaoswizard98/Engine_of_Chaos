function Get_Stat_Gain(_lookup_type,_character,_return_stat,_current_stat,_set_average){
	var _catch_up = false;//do we correct shitty RNG this round?
	var _base_stat = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Base");
	var _early_gain = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Early_Gain");
	var _mid_gain = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Mid_Gain");
	var _late_gain = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Late_Gain");
	var _average_gain = ((_early_gain + _mid_gain + _late_gain)/3);//average the 3 gains when past late phase
	if(!_set_average){//if we arent forcing stat alignment, check if we correct it this level
	    _catch_up = Get_Character_Level_Scheme_Stats(_lookup_type,_character,_return_stat,"Catch_Up");
	}
	//========================
	//Get gain based on level=
	//========================
	var _level = Get_Character_Level(_lookup_type,_character,"Derived");
	var _stat_gain = 0;
    
	if(!_set_average){//if we're forcing average, this gain doesnt matter
	    if(_level <= 10){
	        _stat_gain = _early_gain;
	    }
	    else if(_level <= 20){
	        _stat_gain = _mid_gain;
	    }
	    else if(_level <= 30){
	        _stat_gain = _late_gain;
	    }
	    else{
	        _stat_gain = _average_gain;
	    }
        
	    _stat_gain = floor(_stat_gain + random(1));
	}
    
	//==================================
	//Correct Gain if we had shitty RNG=
	//==================================
	if((_set_average)||(_catch_up)){
	    var _suggested_gain = _base_stat;
	    var i;
	    //calculate average stat for given level
	    for(i = 1; i<_level; i+=1){
	        if(i <= 10){
	            _suggested_gain += _early_gain;
	        }
	        else if(i <= 20){
	            _suggested_gain += _mid_gain;
	        }
	        else if(i <= 30){
	            _suggested_gain += _late_gain;
	        }
	        else{
	            _suggested_gain += _average_gain;
	        }
	    }
        
	    _suggested_gain = floor(_suggested_gain);//average gain for this level
        
	    if(_current_stat + _stat_gain < _suggested_gain){
	        _stat_gain = (_suggested_gain - _current_stat);
	    }
	}
    
	return _stat_gain;
}