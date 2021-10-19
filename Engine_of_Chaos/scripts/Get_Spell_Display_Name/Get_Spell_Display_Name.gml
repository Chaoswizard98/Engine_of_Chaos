function Get_Spell_Display_Name(_spell,_stat,_default = "Unknown"){
	switch(global.Language){
	    case "English": return Spell_Display_Names_English(_spell,_stat,_default); break;
	    default: return Spell_Display_Names_English(_spell,_stat,_default); break;
	}
}