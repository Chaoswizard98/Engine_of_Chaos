function Join_Party() {
	var _lookup_type = argument[0];
	var _character = argument[1];
	var _faction = argument[2];
	var _in_battle_party = argument[3];
	var _can_leave_battle_party = argument[4];

	if(_lookup_type = "Global"){
	    global.Faction[_character] = _faction;
	    global.In_Battle_Party[_character] = _in_battle_party;
	    global.Can_Leave_Battle_Party[_character] = _can_leave_battle_party;
	}
	else if(_lookup_type = "Local"){
	    _character.faction = _faction;
	}



}
