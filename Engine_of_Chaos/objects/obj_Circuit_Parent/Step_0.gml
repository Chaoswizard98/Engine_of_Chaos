//if the player stands on this tile, go to next room

var npc;
npc = instance_position(x,y,obj_Character);

if(npc != noone){//if someone is standing on this tile...
    if(npc.has_circuit){//if they are walking a circuit
        npc.circuit_direction = circuit_direction;//set npc's direction to new direction
        if(set_circuit_speed){
            npc.npc_move_speed = circuit_speed;//set npc's speed to new speed
        }
        if(set_event_cooldown){
            npc.event_cooldown = event_cooldown;//set npc's event cooldown
        }
    }
}

