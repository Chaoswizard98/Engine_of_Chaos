function Get_Level_Scheme_Stats() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _level_scheme = argument[2];
	var _stat = argument[3];
	var _sub_stat = argument[4];


	switch(_level_scheme){
	    case "Swordsman_1": return Level_Scheme_Swordsman_1(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Archer_1": return Level_Scheme_Archer_1(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Healer_1": return Level_Scheme_Healer_1(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Healer_2": return Level_Scheme_Healer_2(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Thief_1": return Level_Scheme_Thief_1(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Mage_1": return Level_Scheme_Mage_1(_lookup_type,_character,_stat,_sub_stat); break;
	    case "Knight_1": return Level_Scheme_Knight_1(_lookup_type,_character,_stat,_sub_stat); break;
    
	    case "Hero_1": return Level_Scheme_Hero_1(_lookup_type,_character,_stat,_sub_stat); break;
    
	    default: return Level_Scheme_Default(_lookup_type,_character,_stat,_sub_stat); break;
	}



}
