function Level_Scheme_Thief_1() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _stat = argument[2];
	var _sub_stat = argument[3];

	var _base = 0;//starting stat
	var _early_gain = 0;//modifier for early levels
	var _mid_gain = 0;//modifier for mid levels
	var _late_gain = 0;//modifier for late levels
	var _new_spell = "none";//what new spell do we learn?
	var _increment_spell_level = "none";//what spell levels up?
	var _level = 0;//initial spell / skill level
	var _catch_up = true;//do we correct poor RNG rolls this level?

	//=================
	//Stat Information=
	//=================
	switch(_stat){
	    case "Attack": _base = 6; _early_gain = 1.4; _mid_gain = 1.4; _late_gain = 1.4; break;
	    case "Defense": _base = 6; _early_gain = 1.1; _mid_gain = 1.1; _late_gain = 1.1; break;
	    case "Agility": _base = 6; _early_gain = 1.1; _mid_gain = 1.1; _late_gain = 1.1; break;
	    case "Max_Health": _base = 8; _early_gain = 1.2; _mid_gain = 1.2; _late_gain = 1.2; break;
	    case "Max_Magic": _base = 0; _early_gain = 0; _mid_gain = 0; _late_gain = 0; break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = 1; break;
	    case "Class_Name": _base = "Thief"; break;
	    case "Class_Abbreviation": _base = "THIF"; break;
	    case "Class_Tier": _base = 0; break;
	    case "Movement_Range": _base = 6; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
	    case "Spell_1": _base = "none"; break;
	    case "Spell_2": _base = "none"; break;
	    case "Spell_3": _base = "none"; break;
	    case "Spell_4": _base = "none"; break;
    
	    //Promotion options
	    case "Promotion_1": _base = "none"; break;
	    case "Promotion_2": _base = "none"; break;
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
	    case "Early_Gain": return _early_gain; break;
	    case "Mid_Gain": return _mid_gain; break;
	    case "Late_Gain": return _late_gain; break;
	    case "New_Spell": return _new_spell; break;
	    case "Increment_Spell_Level": return _increment_spell_level; break;
	    case "Catch_Up": return _catch_up; break;
	}



}
