function Get_Battle_Background() {
	var _attacker = argument[0];
	var _target = argument[1];

	//=======================================================================
	//Check if we have a valid background character, if so, prioritize that.=
	//=======================================================================
	if(_attacker != noone){//if the attacker exists
	    if(_attacker.location = "Background"){//if the attacker is in the BG position,
	        return Get_Terrain_Type(_attacker.character.x,_attacker.character.y);//use their sprite
	    }
	}
	if(_target != noone){//if the target exists
	    if(_target.location = "Background"){//else if target is in BG position,
	        return Get_Terrain_Type(_target.character.x,_target.character.y);//use their sprite
	    }
	}
	//===================================================
	//No valid background character, prioritize attacker=
	//===================================================
	if(_attacker != noone){//otherwise default to attacker
	    return Get_Terrain_Type(_attacker.character.x,_attacker.character.y);
	}
	else if(_target != noone){//if no attacker, then return the target
	    return Get_Terrain_Type(_target.character.x,_target.character.y);
	}
	else{//If for some reason it gets here, return default
	    return "Default";
	}



}
