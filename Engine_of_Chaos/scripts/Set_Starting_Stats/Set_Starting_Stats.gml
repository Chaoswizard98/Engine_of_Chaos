function Set_Starting_Stats(_global_ID,_character_ID,_name,_level_scheme,_level = 1){
	//Sets a character's initial stats when starting a new game.
	var i = _global_ID;
	Global_Character_Stats_Template(i);//set all stats to default

	//======================================
	//Info needed to build a new character =
	//======================================
	global.character_ID[i] = _character_ID;
	global.Name[i] = _name;
	global.Level_Scheme[i] = _level_scheme;
	global.Level[i] = Get_Character_Level_Scheme_Stats("Global",i,"Starting_Level","Base",1);//level temp set to base level.

	//=========================================
	//Set initial stats based on level scheme =
	//=========================================
	global.Attack[i] = Get_Character_Level_Scheme_Stats("Global",i,"Attack","Base",1);
	global.Defense[i] = Get_Character_Level_Scheme_Stats("Global",i,"Defense","Base",1);
	global.Agility[i] = Get_Character_Level_Scheme_Stats("Global",i,"Agility","Base",1);
	global.Max_Health[i] = Get_Character_Level_Scheme_Stats("Global",i,"Max_Health","Base",1);
	global.Max_Magic[i] = Get_Character_Level_Scheme_Stats("Global",i,"Max_Magic","Base",1);
	global.Movement_Range[i] = Get_Character_Level_Scheme_Stats("Global",i,"Movement_Range","Base",1);
	global.Movement_Type[i] = Get_Character_Level_Scheme_Stats("Global",i,"Movement_Type","Base",1);

	var _spell;
	var _spell_level;
	var j;//Loop fill spell slots
	for(j = 0; j< global.Number_Of_Spell_Slots; j+=1){
	    _spell = Get_Character_Level_Scheme_Stats("Global",i,"Spell_"+string(j+1),"Base",1);
	    _spell_level = Get_Character_Level_Scheme_Stats("Global",i,"Spell_"+string(j+1),"Level",1);
	    if(_spell != "none"){
	        global.Spells[i,j] = _spell;
	        global.Spell_Level[i,j] = _spell_level;
	    }
	}

	//========================
	//Level up the character =
	//========================
	while(global.Level[i] < _level){
	    Level_Up("Global",i,true);
	}

	//Set HP/MP to their max values
	global.Current_Health[i] = global.Max_Health[i];
	global.Current_Magic[i] = global.Max_Magic[i];
}