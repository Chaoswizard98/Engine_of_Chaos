function Set_NPC_Circuit(_character, _direction = _character.circuit_direction, _cooldown =_character.event_cooldown){
	_character.allow_wander = false;//Prevent wander
	_character.has_circuit = true;//Set as having circuit
	
	_character.event_cooldown = _cooldown;//time between movement events
	_character.circuit_direction = _direction;//default direction
	
	_character.event_timer = event_cooldown;//start event timer
}