function Set_Enemy_Forest_Serpent_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Forest Serpent";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Forest_Serpent";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Forest_Serpent";//Battle Sprite
	    gold_value = 50;
	    level = 2;
	    max_health = 22;
	    current_health = max_health;
	    attack = 11;
	    defense = 7;
	    agility = 5;
	    movement_range = 5;
	    movement_type = "Fast";
	}



}
