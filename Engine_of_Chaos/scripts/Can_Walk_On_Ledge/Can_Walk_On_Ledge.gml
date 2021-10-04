function Can_Walk_On_Ledge(_character,_target){
	if(_target != noone){
	    if(_character.x<_target.x){
	        if(_target.can_move_right){
	            return true;
	        }
	    }
	    if(_character.x>_target.x){
	        if(_target.can_move_left){
	            return true;
	        }
	    }
	    if(_character.y<_target.y){
	        if(_target.can_move_down){
	            return true;
	        }
	    }
	    if(_character.y>_target.y){
	        if(_target.can_move_up){
	            return true;
	        }
	    }
	    return false;
	}
	return true;
}