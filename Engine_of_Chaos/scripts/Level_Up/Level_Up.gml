function Level_Up() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _force_average = argument[2];

	if(Get_Character_Level(_lookup_type,_character,"Derived") >= global.Level_Cap){//if we're at level cap already
	    return "";//Return null message
	}

	//==========================
	//Increment Character Level=
	//==========================
	Set_Character_Level(_lookup_type,_character,"Add",1);
	if(Get_Character_Level(_lookup_type,_character,"Derived") < global.Level_Cap){//if they're not at level cap
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
	var _new_spell = Get_Stat_Gain(_lookup_type,_character,"New_Spell",0,false);
	var _increment_spell_level = Get_Stat_Gain(_lookup_type,_character,"Increment_Spell_Level",0,false);

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
	if(_new_spell != "none"){
	    if((!Spell_Slots_Are_Full(_lookup_type,_character))&&(!Character_Has_Spell(_lookup_type,_character,_new_spell))){
	        _message += Get_General_Messages("Level_Up","Learn_Spell",string(_new_spell));
	        Give_Character_Spell(_lookup_type,_character,_new_spell,1);
	    }
	}
	if(_increment_spell_level != "none"){
	    if(Character_Has_Spell(_lookup_type,_character,_increment_spell_level)){//if the character has the spell,
	        Set_Spell_Level(_lookup_type,_character,_increment_spell_level,"Add",1);
	        _message += Get_General_Messages("Level_Up","Increase_Spell_Level",_increment_spell_level,string(Get_Spell_Level(_lookup_type,_character,Get_Spell_Slot(_lookup_type,_character,_increment_spell_level))));
	    }
	}

	return _message;



}
