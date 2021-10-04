function Join_Party(_lookup_type,_character,_faction,_in_battle_party,_can_leave_battle_party){
	if(_lookup_type = "Global"){
	    global.Faction[_character] = _faction;
	    global.In_Battle_Party[_character] = _in_battle_party;
	    global.Can_Leave_Battle_Party[_character] = _can_leave_battle_party;
	}
	else if(_lookup_type = "Local"){
	    _character.faction = _faction;
	}
}