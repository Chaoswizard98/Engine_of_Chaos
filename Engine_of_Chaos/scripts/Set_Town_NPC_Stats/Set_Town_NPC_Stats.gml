function Set_Town_NPC_Stats() {
	var _character = argument[0];
	_character.is_npc = true;//Flag them as an NPC

	//Set stats
	_character.name = argument[1];//Name
	_character.overworld_sprite_ID = argument[2];//Sprite
	_character.portrait_ID = argument[3];//Portrait
	_character.voice_ID = argument[4];//Voice
	_character.dialogue_ID = argument[5];//Dialogue ID
	_character.wander_radius = argument[6];//Wander Radius

	if(_character.wander_radius != 0){//If wander radius isnt 0
	    _character.allow_wander = true;//tell them to wander
	}



}
