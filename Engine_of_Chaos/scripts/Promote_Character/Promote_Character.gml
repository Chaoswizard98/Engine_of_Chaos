function Promote_Character(_character,_class) {
	//Takes care of promoting a character (updates class and stats)
	global.Level_Scheme[_character] = _class;
	global.Level[_character] = Get_Character_Level_Scheme_Stats("Global",_character,"Starting_Level","Base");

	//test for spell set changes here
	if(Get_Character_Level_Scheme_Stats("Global",_character,"Reset_Spells","Base")){//if we reset spells for this class
	    var i;//Loop fill spell slots
	    for(i = 0; i< global.Number_Of_Spell_Slots; i+=1){
	        global.Spells[_character,i] = Get_Character_Level_Scheme_Stats("Global",_character,"Spell_"+string(i+1),"Base");
	        global.Spell_Level[_character,i] = Get_Character_Level_Scheme_Stats("Global",_character,"Spell_"+string(i+1),"Level");
	    }
	}

	//Run promotion event (Removes consumed items, gold, etc if required for promotion)
	Get_Character_Level_Scheme_Stats("Global",_character,"Promotion_Event","Base");
	Update_Character_Stats(lookup_type,_character);
}