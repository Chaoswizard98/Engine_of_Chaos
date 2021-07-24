function Set_Enemy_Prism_Flower_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Prism Flower";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Prism_Flower";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Prism_Flower";//Battle Sprite
	    attack_size = -1;
	    max_attack_range = -1;
	    attack_range_type = "Prism_Flower";
	    agility = 99;
	    special_attack = 100;
	    special_attack_type = "Prism_Flower";
	    movement_range = 0;
	    void_damage = 10;
    
	    attack_select_type = "All";
	    attack_pattern = "Prism_Flower";
	}



}
