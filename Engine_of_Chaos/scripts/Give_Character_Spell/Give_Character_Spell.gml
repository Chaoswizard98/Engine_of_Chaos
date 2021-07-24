function Give_Character_Spell() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _spell = argument[2];
	var _spell_level = 1;

	if(argument_count > 3){
	    _spell_level = argument[3];
	}

	var i = 0;
	//Give character spell
	for(i = 0; i< global.Number_Of_Spell_Slots; i+= 1){//loop through all inventory spaces
	    if(Get_Spell(_lookup_type,_character,i) = "none"){//if there is no spell in this slot,
	        if(_lookup_type = "Global"){
	            global.Spells[_character,i] = _spell;
	        }
	        else if(_lookup_type = "Local"){
	            _character.spells[i] = _spell;
	        }
	        Set_Spell_Level(_lookup_type,_character,_spell,"Set",_spell_level)
	        break;
	    }
	}



}
