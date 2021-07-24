function Get_Character_Status_Effect() {
	//checks to see if a character has a given effect
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];
	var _formula = argument[3];
	var _stat = argument[4];

	switch(_effect){
	    //stat buffs
	    case "Attack_Up": return Get_Character_Status_Attack_Up(_lookup_type,_character,_formula,_stat); break;
	    case "Defense_Up": return Get_Character_Status_Defense_Up(_lookup_type,_character,_formula,_stat); break;
	    case "Agility_Up": return Get_Character_Status_Agility_Up(_lookup_type,_character,_formula,_stat); break;
	    case "Movement_Up": return Get_Character_Status_Movement_Up(_lookup_type,_character,_formula,_stat); break;
    
	    //stat debuffs
	    case "Attack_Down": return Get_Character_Status_Attack_Down(_lookup_type,_character,_formula,_stat); break;
	    case "Defense_Down": return Get_Character_Status_Defense_Down(_lookup_type,_character,_formula,_stat); break;
	    case "Agility_Down": return Get_Character_Status_Agility_Down(_lookup_type,_character,_formula,_stat); break;
	    case "Movement_Down": return Get_Character_Status_Movement_Down(_lookup_type,_character,_formula,_stat); break;
    
	    //effects
	    case "Flight": return Get_Character_Status_Flight(_lookup_type,_character,_formula,_stat); break;
	    case "Poison": return Get_Character_Status_Poison(_lookup_type,_character,_formula,_stat); break;
	    case "Paralysis": return Get_Character_Status_Paralysis(_lookup_type,_character,_formula,_stat); break;
	    case "Silence": return Get_Character_Status_Silence(_lookup_type,_character,_formula,_stat); break;
	    case "Sleep": return Get_Character_Status_Sleep(_lookup_type,_character,_formula,_stat); break;
	    case "Stun": return Get_Character_Status_Stun(_lookup_type,_character,_formula,_stat); break;
	    case "Petrify": return Get_Character_Status_Petrify(_lookup_type,_character,_formula,_stat); break;
	    case "Bleed": return Get_Character_Status_Bleed(_lookup_type,_character,_formula,_stat); break;
	    case "Magic_Immunity": return Get_Character_Status_Magic_Immunity(_lookup_type,_character,_formula,_stat); break;
	    case "Snare": return Get_Character_Status_Snare(_lookup_type,_character,_formula,_stat); break;
	    case "Confusion": return Get_Character_Status_Confusion(_lookup_type,_character,_formula,_stat); break;
	    case "Berserk": return Get_Character_Status_Berserk(_lookup_type,_character,_formula,_stat); break;
	    case "Curse_Suppression": return Get_Character_Status_Curse_Suppression(_lookup_type,_character,_formula,_stat); break;
	}

	return 0;



}
