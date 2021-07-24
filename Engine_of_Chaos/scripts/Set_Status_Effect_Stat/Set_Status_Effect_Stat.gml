function Set_Status_Effect_Stat() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];
	var _formula = argument[3];
	var _ammount = argument[4];
	var _stat = argument[5];

	switch(_effect){
	    //buffs
	    case "Attack_Up": Set_Character_Status_Attack_Up(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Defense_Up": Set_Character_Status_Defense_Up(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Agility_Up": Set_Character_Status_Agility_Up(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Movement_Up": Set_Character_Status_Movement_Up(_lookup_type,_character,_formula,_ammount,_stat); break;
    
	    //debuffs
	    case "Attack_Down": Set_Character_Status_Attack_Down(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Defense_Down": Set_Character_Status_Defense_Down(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Agility_Down": Set_Character_Status_Agility_Down(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Movement_Down": Set_Character_Status_Movement_Down(_lookup_type,_character,_formula,_ammount,_stat); break;
    
	    //effects
	    case "Flight": Set_Character_Status_Flight(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Poison": Set_Character_Status_Poison(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Paralysis": Set_Character_Status_Paralysis(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Silence": Set_Character_Status_Silence(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Sleep": Set_Character_Status_Sleep(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Stun": Set_Character_Status_Stun(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Petrify": Set_Character_Status_Petrify(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Bleed": Set_Character_Status_Bleed(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Magic_Immunity": Set_Character_Status_Magic_Immunity(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Snare": Set_Character_Status_Snare(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Confusion": Set_Character_Status_Confusion(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Berserk": Set_Character_Status_Berserk(_lookup_type,_character,_formula,_ammount,_stat); break;
	    case "Curse_Suppression": Set_Character_Status_Curse_Suppression(_lookup_type,_character,_formula,_ammount,_stat); break;
	}



}
