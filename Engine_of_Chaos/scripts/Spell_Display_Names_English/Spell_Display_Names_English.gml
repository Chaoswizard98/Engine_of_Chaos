function Spell_Display_Names_English() {
	var _spell = argument[0];//Item
	var _stat = argument[1];//Return stat

	var _spell_name = "none";//Dont touch these
	var _menu_name = "none";//'none' is ignored by the game, used to test for empty slot

	//Spells
	switch(_spell){
	    //=======
	    //Spells=
	    //=======
	    case "Blaze":
	        _spell_name = "Blaze";
	        _menu_name = "Blaze";
	    break;
	    case "Freeze":
	        _spell_name = "Freeze";
	        _menu_name = "Freeze";
	    break;
	    case "Bolt":
	        _spell_name = "Bolt";
	        _menu_name = "Bolt";
	    break;
	    case "Blast":
	        _spell_name = "Blast";
	        _menu_name = "Blast";
	    break;
	    case "Heal":
	        _spell_name = "Heal";
	        _menu_name = "Heal";
	    break;
	    case "Aura":
	        _spell_name = "Aura";
	        _menu_name = "Aura";
	    break;
	    case "Detox":
	        _spell_name = "Detox";
	        _menu_name = "Detox";
	    break;
	    case "Escape":
	        _spell_name = "Escape";
	        _menu_name = "Escape";
	    break;
	    case "Summon_Wolf":
	        _spell_name = "Summon";
	        _menu_name = "Summon";
	    break;
	    case "Recall":
	        _spell_name = "Recall";
	        _menu_name = "Recall";
	    break;
	}

	//Return Message
	switch(_stat){
	    case "Spell_Name": return _spell_name; break;
	    case "Menu_Name": return _menu_name; break;
	    default: return "none"; break;
	}





}
