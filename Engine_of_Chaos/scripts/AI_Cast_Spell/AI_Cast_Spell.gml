function AI_Cast_Spell(_skip_action,_character,_threat_formula,_speed,_min_threat,_spell,_spell_level){
	var _target = noone;

	if(!_skip_action){
	    if(Get_Spell_Slot("Local",_character,_spell) != -1){//they have the spell
	        if(Get_Spell_Stats(_spell,_spell_level,"Magic_Cost","Local",_character) <= Get_Character_Magic("Local",_character,"Total")){//if they have enough MP
				_target = Get_AI_Target(_character,"Cast_Spell",_threat_formula,_spell,_spell_level,_speed,_min_threat);//get tile we walk to (also remembers target we're attacking)
	            if(_target!= noone){//if we have a valid target
	                _character.ai_action = "Cast_Spell";//set action to magic
	                _character.ai_inventory_slot = Get_Spell_Slot("Local",_character,_spell);
	                _character.ai_inventory_level = _spell_level;
	                Walk_To_Location(_character,_target.x,_target.y,"Perform_AI_Action");//move to that location
	                return true;
	            }
	        }
	    }
	    return false;
	}

	return true;
}