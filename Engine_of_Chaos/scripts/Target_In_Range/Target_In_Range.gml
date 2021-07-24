function Target_In_Range() {
	var _attacker = argument[0];
	var _target = argument[1];
	var _action = argument[2];
	var _slot = argument[3];
	var _slot_level = argument[4];

	var _delete_tiles = false;
	var _found_target = false;

	var _max_range = Get_Character_Max_Attack_Range("Local",_attacker,"Total");
	var _min_range = Get_Character_Min_Attack_Range("Local",_attacker,"Total");
	var _formula = "Attack";

	if(!instance_exists(obj_Target_Tile)){//if attack range is not already generated,
	    _delete_tiles = true;//delete the range afterwords
	    Generate_Target_Range(_attacker,round(_attacker.x),round(_attacker.y),_max_range,_min_range,_formula,false);//generate it
	}

	if(instance_position(_target.x,_target.y,obj_Target_Tile) != noone){//if the target is within range,
	    _found_target = true;
	}

	if(_delete_tiles){
	    instance_destroy(obj_Target_Tile);
	}

	if(_found_target){
	    return true;
	}

	return false;



}
