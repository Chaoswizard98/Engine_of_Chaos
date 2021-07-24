function Set_Enemy_Alpha_Wolf_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Alpha Wolf";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Alpha_Wolf";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Alpha_Wolf";//Battle Sprite
	    gold_value = 40;
	    level = 1;
	    max_health = 12;
	    current_health = max_health;
	    attack = 9;
	    defense = 7;
	    agility = 5;
	    movement_range = 5;
	    movement_type = "Fast";
	    //current_magic = 100;
	    //max_magic = 100;
	    //Give_Character_Spell('Local',_character,'Blaze',4);
	}



}
