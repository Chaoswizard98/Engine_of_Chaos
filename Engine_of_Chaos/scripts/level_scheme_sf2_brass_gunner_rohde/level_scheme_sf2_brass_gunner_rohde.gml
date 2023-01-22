function Level_Scheme_SF2_Brass_Gunner_Rohde(_lookup_type,_character,_stat,_sub_stat,_character_level){
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
		case "Max_Health": _base = 28; _projected = 79; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Early"); break;
	    case "Max_Magic": _base = 0; _projected = 0; break;
	    case "Attack": _base = 29; _projected = 44; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Late"); break;
	    case "Defense": _base = 28; _projected = 80; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Agility": _base = 19; _projected = 50; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Early"); break;
	    
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = _base_level; break;
		case "Max_Level": _base = _max_level; break;
		case "Level_Offset": _base = _level_offset; break;
	    case "Class_Name": _base = "Brass Gunner"; break;
	    case "Class_Abbreviation": _base = "BRGN"; break;
	    case "Movement_Range": _base = 5; break;
	    case "Movement_Type": _base = "Tires"; break;
	    case "Reset_Spells": _base = false; break;
		
		case "Spell_1": _base = "none"; _level = 0; break;
		case "Spell_2": _base = "none"; _level = 0; break;
	    case "Spell_3": _base = "none"; _level = 0; break;
	    case "Spell_4": _base = "none"; _level = 0; break;
    
	    //Promotion options
	    case "Promotion_1": _base = "none"; break;
	    case "Promotion_2": _base = "none"; break;
	    case "Promotion_3": _base = "none"; break;
	    case "Promotion_4": _base = "none"; break;
	    case "Promotion_5": _base = "none"; break;
    
	    //Class requirements test (Defaults to true)
	    case "Meets_Requirements": _base = ((_character_level >= 20) && Has_Item_In_Inventory(_lookup_type,_character,"SF2_Silver_Tank")) break;
	    case "Promotion_Event": Remove_Item(_lookup_type,_character,Get_Item_Slot(_lookup_type,_character,"SF2_Silver_Tank")); break;//Put whatever script you want in here. (Such as removing an item upon promotion)
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