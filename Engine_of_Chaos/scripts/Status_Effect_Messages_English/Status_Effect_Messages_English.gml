function Status_Effect_Messages_English() {
	//checks to see if a character has a given effect
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _effect = argument[2];
	var _message_ID = argument[3];

	var _character_name = Get_Character_Name(_lookup_type,_character,"Total");

	switch(_message_ID){
	    case "Apply_Effect":
	        switch(_effect){
	            case "Poison": return ("#"+_character_name + " has been poisoned.%"); break;
	            case "Attack_Up": return ("#" + _character_name + "'s attack rises.%"); break;
	            case "Defense_Up": return ("#" + _character_name + "'s defense rises.%"); break;
	            case "Agility_Up": return ("#" + _character_name + "'s agility rises.%"); break;
	            case "Movement_Up": return ("#" + _character_name + "'s movement rises.%"); break;
            
	            case "Attack_Down": return ("#" + _character_name + "'s attack falls.%"); break;
	            case "Defense_Down": return ("#" + _character_name + "'s defense falls.%"); break;
	            case "Agility_Down": return ("#" + _character_name + "'s agility falls.%"); break;
	            case "Movement_Down": return ("#" + _character_name + "'s movement falls.%"); break;
            
	            case "Flight": return ("#" + _character_name + " is now flying.%"); break;
	            case "Paralysis": return ("#" + _character_name + " has been paralyzed.%"); break;
	            case "Silence": return ("#" + _character_name + " has been silenced.%"); break;
	            case "Sleep": return ("#" + _character_name + " falls asleep.%"); break;
	            case "Stun": return ("#" + _character_name + " has been stunned.%"); break;
	            case "Snare": return ("#" + _character_name + " cannot move.%"); break;
	            case "Bleed": return ("#" + _character_name + " is now bleeding.%"); break;
	            case "Confusion": return ("#" + _character_name + " is confused.%"); break;
	            case "Berserk": return ("#" + _character_name + " goes berserk.%"); break;
	            case "Curse_Suppression": return ("#" + _character_name + " is now suppressing curses.%"); break;
	            case "Magic_Immunity": return ("#" + _character_name + " is immune to magic.%"); break;
	            case "Petrify": return ("#" + _character_name + " has been petrified.%"); break;
	        }
	    break;
	    case "Effect_Ends": case "Cure_Effect": //Effect_Ends: ends due to RNG save / turns remaining ending, Cure_Effect: effect forcibly removed via spell
	        switch(_effect){
	            //stat buffs
	            case "Attack_Up": return ("#The attack boost ends. " + _character_name + "'s attack returns to normal.%"); break;
	            case "Defense_Up": return ("#The defense boost ends. " + _character_name + "'s defense returns to normal.%"); break;
	            case "Agility_Up": return ("#The agility boost ends. " + _character_name + "'s agility returns to normal.%"); break;
	            case "Movement_Up": return ("#The movement boost ends. " + _character_name + "'s movement returns to normal.%"); break;
            
	            //stat debuffs
	            case "Attack_Down": return ("#The attack reduction ends. " + _character_name + "'s attack returns to normal.%"); break;
	            case "Defense_Down": return ("#The defense reduction ends. " + _character_name + "'s defense returns to normal.%"); break;
	            case "Agility_Down": return ("#The agility reduction ends. " + _character_name + "'s agility returns to normal.%"); break;
	            case "Movement_Down": return ("#The movement reduction ends. " + _character_name + "'s movement returns to normal.%"); break;
            
	            //Effects
	            case "Flight": return ("#" + _character_name + " is no longer flying.%"); break;
	            case "Poison": return ("#" + _character_name + " is no longer poisoned.%"); break;
	            case "Paralysis": return ("#" + _character_name + " is no longer paralyzed.%"); break;
	            case "Silence": return ("#" + _character_name + " is no longer silenced.%"); break;
	            case "Sleep": return ("#" + _character_name + " is no longer sleeping.%"); break;
	            case "Stun": return ("#" + _character_name + " is no longer stunned.%"); break;
	            case "Petrify": return ("#" + _character_name + " is no longer petrified.%"); break;
	            case "Bleed": return ("#" + _character_name + " is no longer bleeding.%"); break;
	            case "Magic_Immunity": return ("#" + _character_name + " is no longer immune to magic.%"); break;
	            case "Snare": return ("#" + _character_name + " is no longer snared.%"); break;
	            case "Confusion": return ("#" + _character_name + " is no longer confused.%"); break;
	            case "Berserk": return ("#" + _character_name + " is no longer berserking.%"); break;
	            case "Curse_Suppression": return ("#" + _character_name + " is no longer suppressing curses.%"); break;
	        }
	    break;
	    case "Update_Effect"://character takes damage
	        switch(_effect){
	            //took damage
	            case "Poison": return ("#" + _character_name + " suffered "+string(Get_Character_Status_Poison(_lookup_type,_character,"Total","Potency"))+" points of damage from the poison.%"); break;
	            case "Bleed": return ("#" + _character_name + " suffered "+string(Get_Character_Status_Bleed(_lookup_type,_character,"Total","Potency"))+" points of damage from bleeding.%"); break;
            
	            //still stunned
	            case "Sleep": return ("#" + _character_name + " is sleeping.%"); break;
	            case "Paralysis": return ("#" + _character_name + " is paralyzed.%"); break;
	            case "Petrify": return ("#" + _character_name + " is petrified.%"); break;
	            case "Stun": return ("#" + _character_name + " is stunned.%"); break;
	        }
	    break;
	    case "Death":
	        return ("#"+Get_Character_Name(_lookup_type,_character,"Total") + " has been defeated.%"); break;
	    break;
	    case "End_Summon":
	        return ("#"+Get_Character_Name(_lookup_type,_character,"Total") + " fades from existence.%"); break;
	    break;
	}

	return "";



}
