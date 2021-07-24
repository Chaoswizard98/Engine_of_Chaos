function AI_Use_Item() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _speed = argument[3];
	var _min_threat = argument[4];
	var _item = argument[5];
	//var _spell_level = argument[6];
	var _target = noone;

	if(!_skip_action){
	    if(Has_Item_In_Inventory("Local",_character,_item)){//they have the item
	        _target = Get_AI_Target(_character,"Cast_Spell",_formula,_item,0,_speed,_min_threat);//get tile we walk to (also remembers target we're attacking)
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
