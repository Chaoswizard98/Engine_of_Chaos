function Landed_Successful_Hit() {
	var _attacker = argument[0];
	var _target = argument[1];

	if(_attacker != _target){//if the attacker targets self, dont try to block
	    if(allow_blocking){
	        if(!Character_Hit_Target(_attacker)||Character_Blocked_Attack(_target)){//if attacker missed, or target blocked,
	           return false; 
	        }
	    }
	}

	return true;



}
