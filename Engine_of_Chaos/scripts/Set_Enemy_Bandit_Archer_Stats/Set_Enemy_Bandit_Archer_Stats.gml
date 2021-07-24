function Set_Enemy_Bandit_Archer_Stats() {
	var _character = argument[0];

	with(_character){
	    name = "Bandit Archer";//Name
	    faction = "Enemy";//Faction
	    overworld_sprite_ID = "Bandit_Archer";//Overworld Sprite
	    battle_cutscene_sprite_ID = "Bandit_Archer";//Battle Sprite
	    gold_value = 20;
	    level = 1;
	    max_health = 12;
	    current_health = max_health;
	    attack = 5;
	    defense = 4;
	    agility = 6;
	    movement_range = 6;
	    movement_type = "Foot";
	    Give_Character_Item("Local",id,"Battered_Arrow",true);
	}



}
