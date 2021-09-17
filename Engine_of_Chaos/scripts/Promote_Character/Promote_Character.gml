function Promote_Character() {
	//Takes care of promoting a character (updates class and stats)
	var _character = argument[0];//character we're promoting
	var _class = argument[1];//character's new class

	global.Level_Scheme[_character] = _class;

	//global.Overworld_Sprite_ID[_character] = global.character_ID[_character] + "_" + Get_Character_Level_Scheme_Stats("Global",_character,"Class_Name","Base");
	//global.Portrait_ID[_character] = global.character_ID[_character] + "_" + Get_Character_Level_Scheme_Stats("Global",_character,"Class_Name","Base");
	//global.Voice_ID[_character] = global.character_ID[_character] + "_" + Get_Character_Level_Scheme_Stats("Global",_character,"Class_Name","Base");
	//global.Battle_Cutscene_Sprite_ID[_character] = global.character_ID[_character] + "_" + Get_Character_Level_Scheme_Stats("Global",_character,"Class_Name","Base");
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
