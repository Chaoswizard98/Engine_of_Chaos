function Menu_Message_English() {
	var _menu = argument[0];//Menu we're calling from
	var _message_ID = argument[1];//Message to look up

	switch(_menu){
	    case "Generic":
	        switch(_message_ID){
	            case "Enabled": return ("Enabled"); break;
	            case "Disabled": return ("Disabled"); break;
	            case "EMPTY": return ("EMPTY"); break;
	            case "DELETE": return ("DELETE"); break;
            
	            case "KILLS": return ("KILLS"); break;
	            case "DEATHS": return ("DEATHS"); break;
	            case "GOLD": return ("GOLD"); break;
	            case "LV": return ("LV"); break;
	            case "HP": return ("HP"); break;
	            case "MP": return ("MP"); break;
	            case "EX": return ("EX"); break;
	            case "ATT": return ("ATT"); break;
	            case "DEF": return ("DEF"); break;
	            case "AGI": return ("AGI"); break;
	            case "MOV": return ("MOV"); break;
	            case "MAGIC": return ("MAGIC"); break;
	            case "ITEMS": return ("ITEMS"); break;
	            case "ITEM": return ("ITEM"); break;
	            case "Nothing": return ("Nothing"); break;
	            case "NAME": return ("NAME"); break;
	            case "CLASS": return ("CLASS"); break;
	            case "LEV": return ("LEV"); break;
	            case "EXP": return ("EXP"); break;
	            case "Level": return ("Level"); break;
	            case "ATTACK": return ("ATTACK"); break;
	            case "DEFENSE": return ("DEFENSE"); break;
	            case "unequippable": return ("unequippable"); break;
	            case "Equipped": return ("Equipped"); break;
	            case "LAND_EFFECT": return ("LAND#EFFECT"); break;
	            case "Gold": return ("Gold"); break;
            
	            case "MEMBER": return ("MEMBER"); break;
	            case "SEARCH": return ("SEARCH"); break;
	            case "MAP": return ("MAP"); break;
	            case "OPTION": return ("OPTION"); break;
	            case "QUIT": return ("QUIT"); break;
	            case "DEFEND": return ("DEFEND"); break;
	            case "TALK": return ("TALK"); break;
	            case "USE": return ("USE"); break;
	            case "GIVE": return ("GIVE"); break;
	            case "EQUIP": return ("EQUIP"); break;
	            case "DROP": return ("DROP"); break;
	            case "JOIN": return ("JOIN"); break;
	            case "LEAVE": return ("LEAVE"); break;
	            case "HELP": return ("HELP"); break;
	            case "RAISE": return ("RAISE"); break;
	            case "CURE": return ("CURE"); break;
	            case "PROMOTE": return ("PROMOTE"); break;
	            case "SAVE": return ("SAVE"); break;
	            case "BUY": return ("BUY"); break;
	            case "SELL": return ("SELL"); break;
	            case "REPAIR": return ("REPAIR"); break;
	            case "DEALS": return ("DEALS"); break;
	            case "Yes": return ("Yes"); break;
	            case "No": return ("No"); break;
	            case "Truth": return ("Truth"); break;
	            case "Lie": return ("Lie"); break;
	            case "Buy": return ("Buy"); break;
	            case "Talk": return ("Talk"); break;
	            case "Cancel": return ("Cancel"); break;
	            case "Easy": return ("Easy"); break;
	            case "Normal": return ("Normal"); break;
	            case "Hard": return ("Hard"); break;
	            case "Insane": return ("Insane"); break;
	        }
	    break;
	    case "Options_Menu":
	        switch(_message_ID){
	            case "Controls": return ("Controls"); break;
	            case "Game_Settings": return ("Game Settings"); break;
	            case "Cheats": return ("Cheats"); break;
	            case "Achievements": return ("Achievements"); break;
	        }
	    break;
	    case "Challenges_Menu":
	        switch(_message_ID){
	            case "Challenge_1": return ("Chapter 1 Challenge"); break;
	            case "Challenge_2": return (""); break;
	            case "Challenge_3": return (""); break;
	            case "Debug_Room": return ("Debug_Room"); break;
	        }
	    break;
	    case "Game_Settings_Menu":
	        switch(_message_ID){
	            case "Reset_Defaults": return ("Reset Defaults"); break;
	            case "Dialogue_Speed": return ("Dialogue Speed"); break;
	            case "Perma_Death": return ("Perma Death"); break;
	            case "Difficulty": return ("Difficulty"); break;
	            case "Sound_Volume": return ("Sound Volume"); break;
	            case "Music_Volume": return ("Music Volume"); break;
	        }
	    break;
	    case "Cheats_Menu":
	        switch(_message_ID){
	            case "Control_All_Units": return ("Control All Units"); break;
	            case "Unlimited_Gold": return ("Unlimited Gold"); break;
	            case "Buy_All_Items": return ("Buy All Items"); break;
	            case "Invincibility": return ("Invincibility"); break;
	            case "Infinite_Magic": return ("Infinite Magic"); break;
	            case "Infinite_Item_Use": return ("Infinite Item Use"); break;
	        }
	    break;
	}

	return "";



}
