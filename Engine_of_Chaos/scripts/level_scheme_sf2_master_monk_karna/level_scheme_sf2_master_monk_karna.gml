function Level_Scheme_SF2_Master_Monk_Karna(_lookup_type,_character,_stat,_sub_stat,_character_level){
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
		case "Max_Health": _base = 33; _projected = 92; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Late"); break;
	    case "Max_Magic": _base = 38; _projected = 71; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Middle"); break;
	    case "Attack": _base = 19; _projected = 46; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Middle"); break;
	    case "Defense": _base = 20; _projected = 55; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Late"); break;
	    case "Agility": _base = 21; _projected = 62; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = _base_level; break;
		case "Max_Level": _base = _max_level; break;
		case "Level_Offset": _base = _level_offset; break;
	    case "Class_Name": _base = "Master Monk"; break;
	    case "Class_Abbreviation": _base = "MMNK"; break;
	    case "Movement_Range": _base = 5; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
		
	    case "Spell_1": 
			_base = "SF2_Heal"; 
			_level = 1; 
			switch(_character_level){
				case 5: _level = 2; break;
				case 22: _level = 3; break;
			}
		break;
		
	    case "Spell_2": 
			_base = "SF2_Blast"; 
			_level = 1; 
			switch(_character_level){
				case 8: _level = 1; break;
				case 16: _level = 2; break;
				case 26: _level = 3; break;
				case 37: _level = 4; break;
			}
		break;
		
	    case "Spell_3": 
			_base = "SF2_Boost"; 
			_level = 1; 
			switch(_character_level){
				case 12: _level = 1; break;
				case 30: _level = 2; break;
			}
		break;
		
	    case "Spell_4": 
			_base = "SF2_Aura"; 
			_level = 1; 
			switch(_character_level){
				case 33: _level = 1; break;
				case 41: _level = 2; break;
				case 55: _level = 3; break;
				case 60: _level = 4; break;
			}
		break;
    
	    //Promotion options
	    case "Promotion_1": _base = "none"; break;
	    case "Promotion_2": _base = "none"; break;
	    case "Promotion_3": _base = "none"; break;
	    case "Promotion_4": _base = "none"; break;
	    case "Promotion_5": _base = "none"; break;
    
	    //Class requirements test (Defaults to true)
	    case "Meets_Requirements": _base = ((_character_level >= 20) && Has_Item_In_Inventory(_lookup_type,_character,"SF2_Vigor_Ball")) break;
	    case "Promotion_Event": Remove_Item(_lookup_type,_character,Get_Item_Slot(_lookup_type,_character,"SF2_Vigor_Ball")); break;//Put whatever script you want in here. (Such as removing an item upon promotion)
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