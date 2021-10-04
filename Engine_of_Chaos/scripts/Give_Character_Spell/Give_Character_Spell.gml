function Give_Character_Spell(_lookup_type,_character,_spell,_spell_level = 1){
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
	        Set_Spell_Level(_lookup_type,_character,i,"Set",_spell_level)
	        break;
	    }
	}
}