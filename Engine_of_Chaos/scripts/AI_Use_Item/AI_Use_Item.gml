function AI_Use_Item(_skip_action,_character,_threat_formula,_speed,_min_threat,_item){
	var _target = noone;

	if(!_skip_action){
	    if(Has_Item_In_Inventory("Local",_character,_item)){//they have the item
	        _target = Get_AI_Target(_character,"Cast_Spell",_threat_formula,_item,0,_speed,_min_threat);//get tile we walk to (also remembers target we're attacking)
	        if(_target!= noone){//if we have a valid target
	            _character.ai_action = "Use_Item";//set action to magic
	            _character.ai_inventory_slot = Get_Item_Slot("Local",_character,_item);
	            _character.ai_inventory_level = Get_Item_Stats(_item,"Use_Effect_Level","Local",_character);
	            Walk_To_Location(_character,_target.x,_target.y,"Perform_AI_Action");//move to that location
	            return true;
	        }
	    }
	    return false;
	}

	return true;
}