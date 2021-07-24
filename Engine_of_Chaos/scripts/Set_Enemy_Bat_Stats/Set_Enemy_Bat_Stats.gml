function Set_Enemy_Bat_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Bat";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Bat";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Bat";//Battle Sprite
	    gold_value = 40;
	    level = 2;
	    max_health = 18;
	    current_health = max_health;
	    attack = 10;
	    defense = 6;
	    agility = 6;
	    movement_range = 5;
	    movement_type = "Flying";
	}



}
