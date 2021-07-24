function AI_Cast_Spell() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _speed = argument[3];
	var _min_threat = argument[4];
	var _spell = argument[5];
	var _spell_level = argument[6];
	var _target = noone;

	if(!_skip_action){
	    if(Get_Spell_Slot("Local",_character,_spell) != -1){//they have the spell
	        if(Get_Effect_Stats(_spell,_spell_level,"Magic_Cost","Local",_character) <= Get_Character_Magic("Local",_character,"Total")){//if they have enough MP
	            _target = Get_AI_Target(_character,"Cast_Spell",_formula,_spell,_spell_level,_speed,_min_threat);//get tile we walk to (also remembers target we're attacking)
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
