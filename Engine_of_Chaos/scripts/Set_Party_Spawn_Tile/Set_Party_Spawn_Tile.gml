function Set_Party_Spawn_Tile() {
	var _tile = argument[0];
	var _faction = argument[1];
	var _spawn_id = argument[2];
	var _function = argument[3];

	_tile.faction = _faction;//faction to spawn in
	_tile.spawn_number = _spawn_id;//battle party slot
	_tile.spawn_function = _function;//type of characters to spawn in. Battle party, reserves, etc



}
