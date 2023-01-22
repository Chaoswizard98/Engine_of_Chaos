function Level_Up(_lookup_type,_character,_force_average){
	if(Character_At_Max_Level(_lookup_type,_character)){//if we're at level cap already
	    return "";//Return null message
	}
	//==========================
	//Increment Character Level=
	//==========================
	Set_Character_Level(_lookup_type,_character,"Add",1);
	if(Character_At_Max_Level(_lookup_type,_character)){//if they're not at level cap
	    Set_Character_Experience(_lookup_type,_character,"Remove",global.Xp_Per_Level);//keep remaining xp
	}
	else{//they're at level cap, set xp to 0
	    Set_Character_Experience(_lookup_type,_character,"Set",0);
	}

	var _message = "";
	_message += Get_General_Messages("Level_Up","Is_Now_Level_X",Get_Character_Name(_lookup_type,_character,"Total"),string(Get_Character_Level(_lookup_type,_character,"Derived")));

	//==========================
	//Increment Character Stats=
	//==========================
	var _attack = Get_Stat_Gain(_lookup_type,_character,"Attack",Get_Character_Attack(_lookup_type,_character,"Base"),_force_average);
	var _defense = Get_Stat_Gain(_lookup_type,_character,"Defense",Get_Character_Defense(_lookup_type,_character,"Base"),_force_average);
	var _agility = Get_Stat_Gain(_lookup_type,_character,"Agility",Get_Character_Agility(_lookup_type,_character,"Base"),_force_average);
	var _max_health = Get_Stat_Gain(_lookup_type,_character,"Max_Health",Get_Character_Max_Health(_lookup_type,_character,"Base"),_force_average);
	var _max_magic = Get_Stat_Gain(_lookup_type,_character,"Max_Magic",Get_Character_Max_Magic(_lookup_type,_character,"Base"),_force_average);

	if(_attack > 0){
	    _message += Get_General_Messages("Level_Up","Gain_Attack",string(_attack));
	    Set_Character_Attack(_lookup_type,_character,"Add",_attack);
	}
	if(_defense > 0){
	    _message += Get_General_Messages("Level_Up","Gain_Defense",string(_defense));
	    Set_Character_Defense(_lookup_type,_character,"Add",_defense);
	}
	if(_agility > 0){
	    _message += Get_General_Messages("Level_Up","Gain_Agility",string(_agility));
	    Set_Character_Agility(_lookup_type,_character,"Add",_agility);
	}
	if(_max_health > 0){
	    _message += Get_General_Messages("Level_Up","Gain_Max_Health",string(_max_health));
	    Set_Character_Max_Health(_lookup_type,_character,"Add",_max_health);
	    if(global.Usable_HP_MP){//can we use newly gained HP?
	        Set_Character_Health(_lookup_type,_character,"Add",_max_health);
	    }
	}
	if(_max_magic > 0){
	    _message += Get_General_Messages("Level_Up","Gain_Max_Magic",string(_max_magic));
	    Set_Character_Max_Magic(_lookup_type,_character,"Add",_max_magic);
	    if(global.Usable_HP_MP){//Can we use newly gained MP?
	        Set_Character_Magic(_lookup_type,_character,"Add",_max_magic);
	    }
	}
	
	var i;
	var _level = 0;
	for(i = 0; i < global.Number_Of_Spell_Slots; i+=1){
		_level = Get_Character_Level_Scheme_Stats(_lookup_type,_character,"Spell_"+string(i+1),"Level",Get_Character_Level(_lookup_type,_character,"Total"));
		//Set_Spell_Level(_lookup_type,_character,i,"Set",1);
		if(_level > Get_Spell_Level(_lookup_type,_character,i)){
			Set_Spell_Level(_lookup_type,_character,i,"Set",_level);
			if(_level = 1){//New spell
				_message += Get_General_Messages("Level_Up","Learn_Spell",Get_Spell_Slot_Stats(_lookup_type,_character,i,_level,"Spell_Name"));
			}
			else{
				_message += Get_General_Messages("Level_Up","Increase_Spell_Level",Get_Spell_Slot_Stats(_lookup_type,_character,i,_level,"Spell_Name"),string(_level));
			}
		}
	}

	return _message;
}