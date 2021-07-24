function Spawn_Battle_Party_Character() {
	var _i = argument[0];
	var _j = argument[1];

	if(_j = spawn_number){//if this is the correct spawn number
	    if(!Character_Is_Dead("Global",_i)){//if character is not dead
	        var _character = Create_NPC(x,y,"Down",global.character_ID[_i],false);//spawn the character
	        _character.control_in_battle = true;
	        return true;
	    }
	}



}
