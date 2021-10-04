function Follow_Character(_character,_target){
	_character.object_following = _target;
	_character.follower_chain = _target.follower_chain;
	_character.can_interact = false;//stop character from being able to be spoken to (so you dont talk to your own follower)
}