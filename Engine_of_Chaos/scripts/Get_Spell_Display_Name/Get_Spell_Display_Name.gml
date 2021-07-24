function Get_Spell_Display_Name() {
	var _spell = argument[0];
	var _stat = argument[1];

	switch(global.Language){
	    case "English": return Spell_Display_Names_English(_spell,_stat); break;
	    default: return Spell_Display_Names_English(_spell,_stat); break;
	}



}
