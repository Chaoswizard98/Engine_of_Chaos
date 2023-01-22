function Set_Town_Party_Member_Stats(_index){
	global_ID = _index;
	
	Reset_Character_Depth(id);

	//Set up stats for party members in town
	name = Get_Character_Name("Global",_index,"Base");//Name
	faction = Get_Character_Faction("Global",_index,"Base");//Faction
	can_gain_xp = true;//all players can gain xp
	can_recieve_drops = true;
	can_recieve_gold = true;
	display_level = true;

	class = Get_Character_Class("Global",_index,"Base");
	level = Get_Character_Level("Global",_index,"Total");
	level_scheme = Get_Character_Level_Scheme("Global",_index,"Base");
	experience = Get_Character_Experience("Global",_index,"Base");
	current_health = Get_Character_Health("Global",_index,"Base");
	max_health = Get_Character_Max_Health("Global",_index,"Base");
	current_magic = Get_Character_Magic("Global",_index,"Base");
	max_magic = Get_Character_Max_Magic("Global",_index,"Base");
	attack = Get_Character_Attack("Global",_index,"Base");
	defense = Get_Character_Defense("Global",_index,"Base");
	agility = Get_Character_Agility("Global",_index,"Base");
	movement_range = Get_Character_Movement_Range("Global",_index,"Base");
	movement_type = Get_Character_Movement_Type("Global",_index,"Base");
	kills = Get_Character_Kills("Global",_index,"Base");
	deaths = Get_Character_Deaths("Global",_index,"Base");

	fire_damage = Get_Character_Fire_Damage("Global",_index,"Base");
	ice_damage = Get_Character_Fire_Damage("Global",_index,"Base");
	water_damage = Get_Character_Water_Damage("Global",_index,"Base");
	lightning_damage = Get_Character_Lightning_Damage("Global",_index,"Base");
	wind_damage = Get_Character_Wind_Damage("Global",_index,"Base");
	earth_damage = Get_Character_Earth_Damage("Global",_index,"Base");
	light_damage = Get_Character_Light_Damage("Global",_index,"Base");
	shadow_damage = Get_Character_Shadow_Damage("Global",_index,"Base");
	magic_damage = Get_Character_Magic_Damage("Global",_index,"Base");
	void_damage = Get_Character_Void_Damage("Global",_index,"Base");

	fire_resistance = Get_Character_Fire_Resistance("Global",_index,"Base");
	ice_resistance = Get_Character_Ice_Resistance("Global",_index,"Base");
	water_resistance = Get_Character_Water_Resistance("Global",_index,"Base");
	lightning_resistance = Get_Character_Lightning_Resistance("Global",_index,"Base");
	wind_resistance = Get_Character_Wind_Resistance("Global",_index,"Base");
	earth_resistance = Get_Character_Earth_Resistance("Global",_index,"Base");
	light_resistance = Get_Character_Light_Resistance("Global",_index,"Base");
	shadow_resistance = Get_Character_Shadow_Resistance("Global",_index,"Base");
	magic_resistance = Get_Character_Magic_Resistance("Global",_index,"Base");

	max_attack_range = Get_Character_Max_Attack_Range("Global",_index,"Base");
	min_attack_range = Get_Character_Min_Attack_Range("Global",_index,"Base");
	attack_range_type = Get_Character_Attack_Range_Type("Global",_index,"Base");
	attack_size = Get_Character_Attack_Size("Global",_index,"Base");
	attack_pattern = Get_Character_Attack_Pattern("Global",_index,"Base");
	attack_target_type = Get_Character_Attack_Target_Type("Global",_index,"Base");
	attack_select_type = Get_Character_Attack_Select_Type("Global",_index,"Base");

	accuracy = Get_Character_Accuracy("Global",_index,"Base");
	evasion = Get_Character_Evasion("Global",_index,"Base");
	crit = Get_Character_Crit("Global",_index,"Base");
	counter = Get_Character_Counter("Global",_index,"Base");
	multi_strike = Get_Character_Multi_Strike("Global",_index,"Base");
	special_attack = Get_Character_Special_Attack("Global",_index,"Base");
	special_attack_type = Get_Character_Special_Attack_Type("Global",_index,"Base");

	turns = Get_Character_Turns("Global",_index,"Base");

	//Items
	var i;//give them an empty inventory
	for(i = 0; i < global.Number_Of_Inventory_Slots; i += 1){
	    items[i] = global.Items[_index,i];
	}
	//give them empty equipment slots
	for(i = 0; i < global.Number_Of_Equipment_Slots; i += 1){
	    equipment[i] = global.Equipment[_index,i];
	}

	//Spells
	for(i = 0; i < global.Number_Of_Spell_Slots; i += 1){
	    spells[i] = global.Spells[_index,i];
	}
	//give them empty equipment slots
	for(i = 0; i < global.Number_Of_Spell_Slots; i += 1){
	    spell_level[i] = global.Spell_Level[_index,i];
	}

	//============
	//Stat Buffs =
	//============
	attack_up[0] = global.Attack_Up[_index,0];//potency
	attack_up[1] = global.Attack_Up[_index,1];//turns remaining
	attack_up[2] = global.Attack_Up[_index,2];//resistance
	attack_up[3] = global.Attack_Up[_index,3];//infliction_chance
	attack_up[4] = global.Attack_Up[_index,4];//infliction_potency
	attack_up[5] = global.Attack_Up[_index,5];//infliction_turns_remaining

	defense_up[0] = global.Defense_Up[_index,0];//potency
	defense_up[1] = global.Defense_Up[_index,1];//turns remaining
	defense_up[2] = global.Defense_Up[_index,2];//resistance
	defense_up[3] = global.Defense_Up[_index,3];//infliction_chance
	defense_up[4] = global.Defense_Up[_index,4];//infliction_potency
	defense_up[5] = global.Defense_Up[_index,5];//infliction_turns_remaining

	agility_up[0] = global.Agility_Up[_index,0];//potency
	agility_up[1] = global.Agility_Up[_index,1];//turns remaining
	agility_up[2] = global.Agility_Up[_index,2];//resistance
	agility_up[3] = global.Agility_Up[_index,3];//infliction_chance
	agility_up[4] = global.Agility_Up[_index,4];//infliction_potency
	agility_up[5] = global.Agility_Up[_index,5];//infliction_turns_remaining

	movement_up[0] = global.Movement_Up[_index,0];//potency
	movement_up[1] = global.Movement_Up[_index,1];//turns remaining
	movement_up[2] = global.Movement_Up[_index,2];//resistance
	movement_up[3] = global.Movement_Up[_index,3];//infliction_chance
	movement_up[4] = global.Movement_Up[_index,4];//infliction_potency
	movement_up[5] = global.Movement_Up[_index,5];//infliction_turns_remaining

	//===============
	//Stat De-Buffs =
	//===============
	attack_down[0] = global.Attack_Down[_index,0];//potency
	attack_down[1] = global.Attack_Down[_index,1];//turns remaining
	attack_down[2] = global.Attack_Down[_index,2];//resistance
	attack_down[3] = global.Attack_Down[_index,3];//infliction_chance
	attack_down[4] = global.Attack_Down[_index,4];//infliction_potency
	attack_down[5] = global.Attack_Down[_index,5];//infliction_turns_remaining

	defense_down[0] = global.Defense_Down[_index,0];//potency
	defense_down[1] = global.Defense_Down[_index,1];//turns remaining
	defense_down[2] = global.Defense_Down[_index,2];//resistance
	defense_down[3] = global.Defense_Down[_index,3];//infliction_chance
	defense_down[4] = global.Defense_Down[_index,4];//infliction_potency
	defense_down[5] = global.Defense_Down[_index,5];//infliction_turns_remaining

	agility_down[0] = global.Agility_Down[_index,0];//potency
	agility_down[1] = global.Agility_Down[_index,1];//turns remaining
	agility_down[2] = global.Agility_Down[_index,2];//resistance
	agility_down[3] = global.Agility_Down[_index,3];//infliction_chance
	agility_down[4] = global.Agility_Down[_index,4];//infliction_potency
	agility_down[5] = global.Agility_Down[_index,5];//infliction_turns_remaining

	movement_down[0] = global.Movement_Down[_index,0];//potency
	movement_down[1] = global.Movement_Down[_index,1];//turns remaining
	movement_down[2] = global.Movement_Down[_index,2];//resistance
	movement_down[3] = global.Movement_Down[_index,3];//infliction_chance
	movement_down[4] = global.Movement_Down[_index,4];//infliction_potency
	movement_down[5] = global.Movement_Down[_index,5];//infliction_turns_remaining

	//=================
	//Status Ailments =
	//=================
	flight[0] = global.Flight[_index,0];//potency
	flight[1] = global.Flight[_index,1];//turns remaining
	flight[2] = global.Flight[_index,2];//resistance
	flight[3] = global.Flight[_index,3];//infliction_chance
	flight[4] = global.Flight[_index,4];//infliction_potency
	flight[5] = global.Flight[_index,5];//infliction_turns_remaining

	poison[0] = global.Poison[_index,0];//potency
	poison[1] = global.Poison[_index,1];//turns remaining
	poison[2] = global.Poison[_index,2];//resistance
	poison[3] = global.Poison[_index,3];//infliction_chance
	poison[4] = global.Poison[_index,4];//infliction_potency
	poison[5] = global.Poison[_index,5];//infliction_turns_remaining

	paralysis[0] = global.Paralysis[_index,0];//potency
	paralysis[1] = global.Paralysis[_index,1];//turns remaining
	paralysis[2] = global.Paralysis[_index,2];//resistance
	paralysis[3] = global.Paralysis[_index,3];//infliction_chance
	paralysis[4] = global.Paralysis[_index,4];//infliction_potency
	paralysis[5] = global.Paralysis[_index,5];//infliction_turns_remaining

	silence[0] = global.Silence[_index,0];//potency
	silence[1] = global.Silence[_index,1];//turns remaining
	silence[2] = global.Silence[_index,2];//resistance
	silence[3] = global.Silence[_index,3];//infliction_chance
	silence[4] = global.Silence[_index,4];//infliction_potency
	silence[5] = global.Silence[_index,5];//infliction_turns_remaining

	sleep[0] = global.Sleep[_index,0];//potency
	sleep[1] = global.Sleep[_index,1];//turns remaining
	sleep[2] = global.Sleep[_index,2];//resistance
	sleep[3] = global.Sleep[_index,3];//infliction_chance
	sleep[4] = global.Sleep[_index,4];//infliction_potency
	sleep[5] = global.Sleep[_index,5];//infliction_turns_remaining

	stun[0] = global.Stun[_index,0];//potency
	stun[1] = global.Stun[_index,1];//turns remaining
	stun[2] = global.Stun[_index,2];//resistance
	stun[3] = global.Stun[_index,3];//infliction_chance
	stun[4] = global.Stun[_index,4];//infliction_potency
	stun[5] = global.Stun[_index,5];//infliction_turns_remaining

	petrify[0] = global.Petrify[_index,0];//potency
	petrify[1] = global.Petrify[_index,1];//turns remaining
	petrify[2] = global.Petrify[_index,2];//resistance
	petrify[3] = global.Petrify[_index,3];//infliction_chance
	petrify[4] = global.Petrify[_index,4];//infliction_potency
	petrify[5] = global.Petrify[_index,5];//infliction_turns_remaining

	bleed[0] = global.Bleed[_index,0];//potency
	bleed[1] = global.Bleed[_index,1];//turns remaining
	bleed[2] = global.Bleed[_index,2];//resistance
	bleed[3] = global.Bleed[_index,3];//infliction_chance
	bleed[4] = global.Bleed[_index,4];//infliction_potency
	bleed[5] = global.Bleed[_index,5];//infliction_turns_remaining

	magic_immunity[0] = global.Magic_Immunity[_index,0];//potency
	magic_immunity[1] = global.Magic_Immunity[_index,1];//turns remaining
	magic_immunity[2] = global.Magic_Immunity[_index,2];//resistance
	magic_immunity[3] = global.Magic_Immunity[_index,3];//infliction_chance
	magic_immunity[4] = global.Magic_Immunity[_index,4];//infliction_potency
	magic_immunity[5] = global.Magic_Immunity[_index,5];//infliction_turns_remaining

	snare[0] = global.Snare[_index,0];//potency
	snare[1] = global.Snare[_index,1];//turns remaining
	snare[2] = global.Snare[_index,2];//resistance
	snare[3] = global.Snare[_index,3];//infliction_chance
	snare[4] = global.Snare[_index,4];//infliction_potency
	snare[5] = global.Snare[_index,5];//infliction_turns_remaining

	confusion[0] = global.Confusion[_index,0];//potency
	confusion[1] = global.Confusion[_index,1];//turns remaining
	confusion[2] = global.Confusion[_index,2];//resistance
	confusion[3] = global.Confusion[_index,3];//infliction_chance
	confusion[4] = global.Confusion[_index,4];//infliction_potency
	confusion[5] = global.Confusion[_index,5];//infliction_turns_remaining

	berserk[0] = global.Berserk[_index,0];//potency
	berserk[1] = global.Berserk[_index,1];//turns remaining
	berserk[2] = global.Berserk[_index,2];//resistance
	berserk[3] = global.Berserk[_index,3];//infliction_chance
	berserk[4] = global.Berserk[_index,4];//infliction_potency
	berserk[5] = global.Berserk[_index,5];//infliction_turns_remaining

	curse_suppression[0] = global.Curse_Suppression[_index,0];//potency
	curse_suppression[1] = global.Curse_Suppression[_index,1];//turns remaining
	curse_suppression[2] = global.Curse_Suppression[_index,2];//resistance
	curse_suppression[3] = global.Curse_Suppression[_index,3];//infliction_chance
	curse_suppression[4] = global.Curse_Suppression[_index,4];//infliction_potency
	curse_suppression[5] = global.Curse_Suppression[_index,5];//infliction_turns_remaining
}
