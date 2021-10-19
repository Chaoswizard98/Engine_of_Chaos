function Can_End_Turn(_character) {
	//If we can end our turn at this location (test for allies / teleport tiles)
	return Tile_Is_Empty(_character);
}