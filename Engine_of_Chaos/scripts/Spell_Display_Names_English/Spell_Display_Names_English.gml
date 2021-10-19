function Spell_Display_Names_English(_spell,_stat,_default){
	var _spell_name = _default;
	var _menu_name = _default;

	//Spells
	switch(_spell){
	    //=======
	    //Spells=
	    //=======
	    case "SPELL": _spell_name = "SPELL_NAME"; _menu_name = "MENU_NAME"; break;
	}

	//Return Message
	switch(_stat){
	    case "Spell_Name": return _spell_name; break;
	    case "Menu_Name": return _menu_name; break;
	    default: return "Unknown"; break;
	}
}