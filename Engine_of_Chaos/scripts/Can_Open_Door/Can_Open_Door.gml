function Can_Open_Door(_character,_target){
	if(_target != noone){
	    if(_character.player_controlled){//if character is controlled by the player (prevents npcs from opening doors)
	        with(_target){
	            event_perform(ev_other,ev_user0);//open door
	        }
	        return true;
	    }
	    return false;
	}
	return true;
}