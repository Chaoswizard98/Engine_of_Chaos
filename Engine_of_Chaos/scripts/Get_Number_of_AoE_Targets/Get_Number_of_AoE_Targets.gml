function Get_Number_of_AoE_Targets(_character,_select_type){
	var _target = noone;
	var _count = 0;

	with(obj_AoE_Tile){//Loop through all aoe tiles, find number of targets
	    _target = instance_position(x,y,obj_Character);//grab character at location (if one exists)
	    if(_target != noone){//if one exists
	        if(Can_Target_Character(_select_type,_character,_target)){//If we can run the effect on them
	            _count += 1;
	        }
	    }
	}

	return _count;
}