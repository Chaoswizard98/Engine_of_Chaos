function Level_Scheme_SF2_Mage_Tyrin(_lookup_type,_character,_stat,_sub_stat,_character_level){
	var _base = 0;//starting stat
	var _projected = 0;//projected "max level" stat
	var _catch_up = true;//do we correct poor RNG rolls this level?
	var _level = 0;//initial spell / skill level
	var _gain = 0;//estimated stat gain for this level
	
	var _base_level = 1;//Starting level for this class.
	var _max_level = 30;//Max level for this class.
	var _max_growth_level = 30;//Max growth level for this class. (after this level, any future growths are averaged)
	var _level_offset = 0;//the offset from the actual level. (class may display as level 1 but actually be equivalent to level 20)
	var _class_level = _character_level - _level_offset;//The current displayed level.
	//=================
	//Stat Information=
	//=================
	switch(_stat){
	    case "Max_Health": _base = 8; _projected = 28; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Max_Magic": _base = 6; _projected = 54; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Early"); break;
	    case "Attack": _base = 4; _projected = 22; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Defense": _base = 3; _projected = 27; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
	    case "Agility": _base = 7; _projected = 33; _gain = Get_Stat_Curve_Basic(_base_level,_max_growth_level,_class_level,_base,_projected,"Linear"); break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = _base_level; break;
		case "Max_Level": _base = _max_level; break;
		case "Level_Offset": _base = _level_offset; break;
	    case "Class_Name": _base = "Mage"; break;
	    case "Class_Abbreviation": _base = "MAGE"; break;
	    case "Movement_Range": _base = 5; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
	    
		case "Spell_1": 
			_base = "SF2_Blaze"; 
			_level = 1; 
			switch(Get_Character_Level(_lookup_type,_character,"Total")){
				case 1: _level = 2; break;
				case 51: _level = 3; break;
				case 56: _level = 4; break;
			}
		break;
		
	    case "Spell_2": 
			_base = "SF2_Freeze";
		switch(Get_Character_Level(_lookup_type,_character,"Total")){
				case 5: _level = 1; break;
				case 22: _level = 2; break;
				case 31: _level = 3; break;
				case 38: _level = 4; break;
			}
		break;
		
	    case "Spell_3": 
			_base = "SF2_Sleep"; 
		switch(Get_Character_Level(_lookup_type,_character,"Total")){
				case 25: _level = 1; break;
			}
		break;
		
	    case "Spell_4": 
			_base = "SF2_Bolt"; 
		switch(Get_Character_Level(_lookup_type,_character,"Total")){
				case 28: _level = 1; break;
				case 35: _level = 2; break;
				case 54: _level = 3; break;
				case 60: _level = 4; break;
			}
		break;
    
	    //Promotion options
	    case "Promotion_1": _base = "SF2_Wizard_Tyrin"; break;
	    case "Promotion_2": _base = "SF2_Sorcerer_Tyrin"; break;
	    case "Promotion_3": _base = "none"; break;
	    case "Promotion_4": _base = "none"; break;
	    case "Promotion_5": _base = "none"; break;
    
	    //Class requirements test (Defaults to true)
	    case "Meets_Requirements": _base = true; break;
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







//(_lookup_type,_character,_stat,_sub_stat){
//	var _base = 0;//starting stat
//	var _early_gain = 0;//modifier for early levels
//	var _mid_gain = 0;//modifier for mid levels
//	var _late_gain = 0;//modifier for late levels
//	var _level = 0;//initial spell / skill level
//	var _catch_up = true;//do we correct poor RNG rolls this level?

//	//=================
//	//Stat Information=
//	//=================
//	switch(_stat){
//	    case "Attack": _base = 5; _early_gain = .5; _mid_gain = .5; _late_gain = .5; break;
//	    case "Defense": _base = 4; _early_gain = .7; _mid_gain = .7; _late_gain = .7; break;
//	    case "Agility": _base = 8; _early_gain = 1.2; _mid_gain = 1.2; _late_gain = 1.2; break;
//	    case "Max_Health": _base = 11; _early_gain = .8; _mid_gain = .8; _late_gain = .8; break;
//	    case "Max_Magic": _base = 7; _early_gain = 1.6; _mid_gain = 1.6; _late_gain = 1.6; break;
    
//	    //Starting, non-growing stats
//	    case "Starting_Level": _base = 1; break;
//	    case "Class_Name": _base = "Mage"; break;
//	    case "Class_Abbreviation": _base = "MAGE"; break;
//	    case "Movement_Range": _base = 5; break;
//	    case "Movement_Type": _base = "Foot"; break;
//	    case "Reset_Spells": _base = false; break;
		
//	    case "Spell_1": 
//			_base = "AU_Blaze"; 
//			_level = 1;
//			switch(Get_Character_Level(_lookup_type,_character,"Total")){
//				case 5: _level = 2; break;
//				case 20: _level = 3; break;
//				case 35: _level = 4; break;
//			}
//		break;
		
//	    case "Spell_2": 
//			_base = "AU_Freeze"; 
//			_level = 0; 
//			switch(Get_Character_Level(_lookup_type,_character,"Total")){
//				case 7: _level = 1; break;
//				case 13: _level = 2; break;
//				case 31: _level = 3; break;
//				case 38: _level = 4; break;
//			}
//		break;
		
//	    case "Spell_3": 
//			_base = "AU_Silence"; 
//			_level = 0; 
//			switch(Get_Character_Level(_lookup_type,_character,"Total")){
//				case 25: _level = 1; break;
//			}
//		break;
		
//	    case "Spell_4": _base = "none"; break;
    
//	    //Promotion options
//	    case "Promotion_1": _base = "none"; break;
//	    case "Promotion_2": _base = "none"; break;
//	    case "Promotion_3": _base = "none"; break;
//	    case "Promotion_4": _base = "none"; break;
//	    case "Promotion_5": _base = "none"; break;
    
//	    //Class requirements test (Defaults to true)
//	    case "Meets_Requirements": _base = true; break;
//	    case "Promotion_Event": break;//Put whatever script you want in here. (Such as removing an item upon promotion)
//	}

//	//======================
//	//Return Requested Stat=
//	//======================
//	switch(_sub_stat){
//	    case "Base": return _base; break;
//	    case "Level": return _level; break;
//	    case "Early_Gain": return _early_gain; break;
//	    case "Mid_Gain": return _mid_gain; break;
//	    case "Late_Gain": return _late_gain; break;
//	    case "Catch_Up": return _catch_up; break;
//	}
//}