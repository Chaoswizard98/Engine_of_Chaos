function Has_Valid_Target() {
	var _character = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _target_range = argument[3];
	var _removal_range = argument[4];
	var _formula = argument[5];
	var _target_type = argument[6];
	var _target = noone;
	var _delete_tiles = false;
	var _found_target = false;

	if(argument_count > 7){
	    _target = argument[7];
	}

	if(!instance_exists(obj_Target_Tile)){//if attack range is not already generated,
	    _delete_tiles = true;
	    Generate_Target_Range(_character,_start_x,_start_y,_target_range,_removal_range,_formula,false);//generate it
	}


	var _target_character = noone;
	with(obj_Target_Tile){
	    _target_character = instance_position(x,y,obj_Character);
	    if(_target_character != noone){
	        if(Can_Target_Character(_target_type,_character,_target_character)){
	            _found_target = true;
	            break;
	        }
	    }
	    else{//terrain isnt empty,
	        if(_target_type = "Empty_Tile"){
	            _found_target = true;
	            break;
	        }
	    }
	}

	if(_delete_tiles){
	    instance_destroy(obj_Target_Tile);
	}

	if(_found_target){
	    return true;
	}

	return false;



}
