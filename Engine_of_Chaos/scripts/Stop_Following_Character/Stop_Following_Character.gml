function Stop_Following_Character(_character){
	_character.object_following = noone;
	_character.follower_chain = _character.character_ID;
	_character.can_interact = true;//Allow being spoken to
}