function Follow_Character() {
	var _character = argument[0];
	var _target = argument[1];

	_character.object_following = _target;
	_character.follower_chain = _target.follower_chain;

	_character.can_interact = false;//stop character from being able to be spoken to (so you dont talk to your own follower)



}
