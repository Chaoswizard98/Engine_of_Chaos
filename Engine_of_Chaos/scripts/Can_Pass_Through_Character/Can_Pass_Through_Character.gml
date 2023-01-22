function Can_Pass_Through_Character(_character,_target){
	if(_target != noone){
	    if(global.In_Battle){
	        if(Target_Is_Ally(_character,_target)&&(!_target.hidden)){
	            return true;
	        }
	    }
	    else{
	        if((_target.follower_chain = _character.follower_chain)&&(_character.follower_chain != "none")){//if the character is following us,
	            return true;
	        }
	    }
	    return false;
	}
	return true;
}