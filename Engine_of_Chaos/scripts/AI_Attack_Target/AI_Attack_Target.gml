function AI_Attack_Target() {
	var _skip_action = argument[0];
	var _character = argument[1];
	var _formula = argument[2];
	var _speed = argument[3];
	var _min_threat = argument[4];
	var _target = noone;

	if(!_skip_action){
	    _target = Get_AI_Target(_character,"Attack",_formula,"none",1,_speed,_min_threat);//get tile we walk to (also remembers target we're attacking)
	    if(_target!= noone){//if we have a valid target
	        _character.ai_action = "Attack";//set action to attack
	        Walk_To_Location(_character,_target.x,_target.y,"Perform_AI_Action");//move to that location
	        return true;
	    }
	    return false;
	}

	return true;



}
