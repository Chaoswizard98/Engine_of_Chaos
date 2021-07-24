function Set_Enemy_Bandit_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Bandit";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Bandit";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Bandit";//Battle Sprite
	    gold_value = 20;
	    level = 1;
	    max_health = 12;
	    current_health = max_health;
	    attack = 8;
	    defense = 6;
	    agility = 4;
	    movement_range = 5;
	    movement_type = "Foot";
	}



}
