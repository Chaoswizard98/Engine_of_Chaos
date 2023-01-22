function Level_Scheme_SF2_Vicar_Frayja(_lookup_type,_character,_stat,_sub_stat,_character_level){
	var _base = 0;//starting stat
	var _projected = 0;//projected "max level" stat
	var _catch_up = true;//do we correct poor RNG rolls this level?
	var _level = 0;//initial spell / skill level
	var _gain = 0;//estimated stat gain for this level
	
	var _base_level = 1;//Starting level for this class.
	var _max_level = 99;//Max level for this class.
	var _max_growth_level = 30;//Max growth level for this class. (after this level, any future growths are averaged)
	var _level_offset = 19;//the offset from the actual level. (class may display as level 1 but actually be equivalent to level 20)
	var _class_level = _character_level - _level_offset;//The current displayed level.
	//=================
	//Stat Information=
	//=================
	switch(_stat){
		case "Max_Health": _base = 30; _projected = 81; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Max_Magic": _base = 32; _projected = 74; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Attack": _base = 18; _projected = 42; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Defense": _base = 18; _projected = 59; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Late"); break;
	    case "Agility": _base = 22; _projected = 58; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = _base_level; break;
		case "Max_Level": _base = _max_level; break;
		case "Level_Offset": _base = _level_offset; break;
	    case "Class_Name": _base = "Vicar"; break;
	    case "Class_Abbreviation": _base = "VICR"; break;
	    case "Movement_Range": _base = 5; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
		
	    case "Spell_1": 
			_base = "SF2_Heal"; 
			_level = 1; 
			switch(_character_level){
				case 13: _level = 2; break;
				case 56: _level = 3; break;
				case 60: _level = 4; break;
			}
		break;
		
	    case "Spell_2": 
			_base = "SF2_Detox"; 
			_level = 1; 
			switch(_character_level){
				case 5: _level = 1; break;
				case 17: _level = 2; break;
				case 37: _level = 3; break;
				case 43: _level = 4; break;
			}
		break;
		
	    case "Spell_3": 
			_base = "SF2_Aura"; 
			_level = 1; 
			switch(_character_level){
				case 34: _level = 1; break;
				case 40: _level = 2; break;
				case 46: _level = 3; break;
				case 52: _level = 4; break;
			}
		break;
		
	    case "Spell_4": 
			_base = "SF2_Attack"; 
			_level = 1; 
			switch(_character_level){
				case 49: _level = 1; break;
			}
		break;
    
	    //Promotion options
	    case "Promotion_1": _base = "none"; break;
	    case "Promotion_2": _base = "none"; break;
	    case "Promotion_3": _base = "none"; break;
	    case "Promotion_4": _base = "none"; break;
	    case "Promotion_5": _base = "none"; break;
    
	    //Class requirements test (Defaults to true)
	    case "Meets_Requirements": _base = (_character_level >= 20) break;
	    case "Promotion_Event": break;//Put whatever script you want in here. (Such as removing an item upon promotion)
	}

	//======================
	//Return Requested Stat=
	//======================
	switch(_sub_stat){
	    case "Base": return _base; break;
		case "Level": return _level; break;
		case "Gain": return _gain; break;
	    case "Catch_Up": return _catch_up; break;
	}
}