function Set_Wolf_Summon_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Wolf Summon";//Name
	    overworld_sprite_ID = "Wolf";//Overworld Sprite
	    gold_value = 0;
	    max_health = 8;
	    current_health = max_health;
	    attack = 8;
	    defense = 5;
	    agility = 3;
	    movement_range = 5;
	    movement_type = "Fast";
	    spells[0] = "Recall";
	    spell_level[0] = 1;
	    death_animation = "Beam";
    
	    summoned_turns_remaining = -1;
	    magic_consumed = 2;//Mana consumed from the caster each turn
	    persistent_summon = false;//do they stick around even after summoner death?
    
	    faction = summoner.faction;//Faction
	    control_in_battle = summoner.control_in_battle;
	    level = 1;
	    battle_cutscene_sprite_ID = "Wolf_Summon_Ally";//Battle Sprite
	}



}
