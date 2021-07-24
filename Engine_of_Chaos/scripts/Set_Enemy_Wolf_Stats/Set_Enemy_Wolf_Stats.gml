function Set_Enemy_Wolf_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Wolf";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Wolf";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Wolf";//Battle Sprite
	    gold_value = 20;
	    level = 1;
	    max_health = 8;
	    current_health = max_health;
	    attack = 8;
	    defense = 5;
	    agility = 3;
	    movement_range = 5;
	    movement_type = "Fast";
	}



}
