function Set_Enemy_Burst_Rock_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Burst Rock";
	    faction = "Enemy";
	    overworld_sprite_ID = "Burst_Rock";
	    battle_cutscene_sprite_ID = "Burst_Rock";
	    max_attack_range = 0;
	    min_attack_range = -1;
	    attack_size = 3;
	    void_damage = 10;
	    attack_target_type = "Ally";
	    attack_select_type = "All";
	    agility = 99;
	    special_attack = 100;
	    special_attack_type = "Burst_Rock";
	    movement_range = 10;
	    attack_pattern = "Burst_Rock";
	    battle_cutscene_death_event = "Burst_Rock";
	}



}
