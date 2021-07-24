function Control_New_Character() {
	var _player = argument[0];
	var _npc = argument[1];

	_player.player_controlled = false;//no longer controlling the player
	_player.can_trigger_room_transition = false;//cant trigger room transitions
	_player.is_npc = true;//convert player to npc

	global.Player = _npc;//set player control to NPC
	global.Player.is_npc = false;//new player is not an npc
	global.Player.player_controlled = true;//set NPC to allow player control
	global.Player.can_trigger_room_transition = true;//allow triggering room transitions
	Reset_Camera(global.Player);//camera follows new player



}
