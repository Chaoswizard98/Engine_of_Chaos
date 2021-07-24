function Level_Scheme_Hero_1() {
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
	var _catch_up = true;//do we correct poor RNG rolls this level?
	var _level = 0;//initial spell / skill level

	//=================
	//Stat Information=
	//=================
	switch(_stat){
	    case "Attack": _base = 28; _early_gain = 1; _mid_gain = 1; _late_gain = 1; break;
	    case "Defense": _base = 25; _early_gain = 2.3; _mid_gain = 2.3; _late_gain = 2.3; break;
	    case "Agility": _base = 24; _early_gain = 1.1; _mid_gain = 1.1; _late_gain = 1.1; break;
	    case "Max_Health": _base = 42; _early_gain = 1.1; _mid_gain = 1.1; _late_gain = 1.1; break;
	    case "Max_Magic": _base = 14; _early_gain = .3; _mid_gain = .3; _late_gain = .3; break;
    
	    //Starting, non-growing stats
	    case "Starting_Level": _base = 21; break;
	    case "Class_Name": _base = "Hero"; break;
	    case "Class_Abbreviation": _base = "HERO"; break;
	    case "Class_Tier": _base = 1; break;
	    case "Movement_Range": _base = 6; break;
	    case "Movement_Type": _base = "Foot"; break;
	    case "Reset_Spells": _base = false; break;
	    case "Spell_1": _base = "Escape"; _level = 1; break;
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
	    case "Meets_Requirements":
	        if(Get_Character_Level(_lookup_type,_character,"Total") >= 20){//If character is level 20 or higher
	            _base = true;
	        }
	    break;
	    case "Promotion_Event": break;//Put whatever script you want in here. (Such as removing an item upon promotion)
	}


	switch(Get_Character_Level(_lookup_type,_character,"Total")){
	    case 22: _new_spell = "Bolt"; break;
	    case 31: _increment_spell_level = Increment_Spell_Level(_lookup_type,_character,"Bolt",2); break;
	    case 42: _increment_spell_level = Increment_Spell_Level(_lookup_type,_character,"Bolt",3); break;
	    case 51: _increment_spell_level = Increment_Spell_Level(_lookup_type,_character,"Bolt",4); break;
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
