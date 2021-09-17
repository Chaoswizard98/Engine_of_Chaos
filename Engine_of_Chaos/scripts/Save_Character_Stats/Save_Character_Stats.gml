function Save_Character_Stats() {
	var _character = argument[0];
	var i,j;
	if(_character.global_ID != -1){//Valid character,
	    i = _character.global_ID;
    
	    global.Name[i] = name;
	    global.Faction[i] = faction;
	    //global.Overworld_Sprite_ID[i] = overworld_sprite_ID;
	    //global.Portrait_ID[i] = portrait_ID;
	    //global.Voice_ID[i] = voice_ID;
	    //global.Battle_Cutscene_Sprite_ID[i] = battle_cutscene_sprite_ID;
	    //global.Battle_Cutscene_Sprite_ID_Override[i] = battle_cutscene_sprite_ID_override;
    
	    //class;
	    global.Level[i] = level;
	    global.Level_Scheme[i] = level_scheme;
	    global.Experience[i] = experience;
	    global.Current_Health[i] = current_health;
	    global.Max_Health[i] = max_health;
	    global.Current_Magic[i] = current_magic;
	    global.Max_Magic[i] = max_magic;
	    global.Attack[i] = attack;
	    global.Defense[i] = defense;
	    global.Agility[i] = agility;
	    global.Movement_Range[i] = movement_range;
	    global.Movement_Type[i] = movement_type;
	    global.Kills[i] = kills;
	    global.Deaths[i] = deaths;
    
	    global.Fire_Damage[i] = fire_damage;
	    global.Ice_Damage[i] = ice_damage;
	    global.Water_Damage[i] = water_damage;
	    global.Lightning_Damage[i] = lightning_damage;
	    global.Wind_Damage[i] = wind_damage;
	    global.Earth_Damage[i] = earth_damage;
	    global.Light_Damage[i] = light_damage;
	    global.Shadow_Damage[i] = shadow_damage;
	    global.Magic_Damage[i] = magic_damage;
	    global.Void_Damage[i] = void_damage;
    
	    global.Fire_Resistance[i] = fire_resistance;
	    global.Ice_Resistance[i] = ice_resistance;
	    global.Water_Resistance[i] = water_resistance;
	    global.Lightning_Resistance[i] = lightning_resistance;
	    global.Wind_Resistance[i] = wind_resistance;
	    global.Earth_Resistance[i] = earth_resistance;
	    global.Light_Resistance[i] = light_resistance;
	    global.Shadow_Resistance[i] = shadow_resistance;
	    global.Magic_Resistance[i] = magic_resistance;
    
	    global.Max_Attack_Range[i] = max_attack_range;
	    global.Min_Attack_Range[i] = min_attack_range;
	    global.Attack_Range_Type[i] = attack_range_type;
	    global.Attack_Size[i] = attack_size;
	    global.Attack_Pattern[i] = attack_pattern;
	    global.Attack_Target_Type[i] = attack_target_type;
	    global.Attack_Select_Type[i] = attack_select_type;
    
	    global.Accuracy[i] = accuracy;
	    global.Evasion[i] = evasion;
	    global.Crit[i] = crit;
	    global.Counter[i] = counter;
	    global.Multi_Strike[i] = multi_strike;
	    global.Special_Attack[i] = special_attack;
	    global.Special_Attack_Type[i] = special_attack_type;
    
	    global.Turns[i] = turns;
    
    
	    //Items
	    for(j = 0; j < global.Number_Of_Inventory_Slots; j += 1){
	        global.Items[i,j] = items[j];
	    }
	    //give them empty equipment slots
	    for(j = 0; j < global.Number_Of_Equipment_Slots; j += 1){
	        global.Equipment[i,j] = equipment[j];
	    }
    
	    //Spells
	    for(j = 0; j < global.Number_Of_Spell_Slots; j += 1){
	        global.Spells[i,j] = spells[j];
	    }
	    //give them empty equipment slots
	    for(j = 0; j < global.Number_Of_Spell_Slots; j += 1){
	        global.Spell_Level[i,j] = spell_level[j];
	    }
    
	    //============
	    //Stat Buffs =
	    //============
	    for(j = 0; j < 6; j+= 1){
	        global.Attack_Up[i,j] = attack_up[j];
	        global.Defense_Up[i,j] = defense_up[j];
	        global.Agility_Up[i,j] = agility_up[j];
	        global.Movement_Up[i,j] = movement_up[j];
	        global.Attack_Down[i,j] = attack_down[j];
	        global.Defense_Down[i,j] = defense_down[j];
	        global.Agility_Down[i,j] = agility_down[j];
	        global.Movement_Down[i,j] = movement_down[j];
	        global.Flight[i,j] = flight[j];
	        global.Poison[i,j] = poison[j];
	        global.Paralysis[i,j] = paralysis[j];
	        global.Silence[i,j] = silence[j];
	        global.Sleep[i,j] = sleep[j];
	        global.Stun[i,j] = stun[j];
	        global.Petrify[i,j] = petrify[j];
	        global.Bleed[i,j] = bleed[j];
	        global.Magic_Immunity[i,j] = magic_immunity[j];
	        global.Snare[i,j] = snare[j];
	        global.Confusion[i,j] = confusion[j];
	        global.Berserk[i,j] = berserk[j];
	        global.Curse_Suppression[i,j] = curse_suppression[j];
	    }
	    Cure_Status_Effect("Global",i,"Attack_Up");
	    Cure_Status_Effect("Global",i,"Defense_Up");
	    Cure_Status_Effect("Global",i,"Agility_Up");
	    Cure_Status_Effect("Global",i,"Movement_Up");
	    Cure_Status_Effect("Global",i,"Attack_Down");
	    Cure_Status_Effect("Global",i,"Defense_Down");
	    Cure_Status_Effect("Global",i,"Agility_Down");
	    Cure_Status_Effect("Global",i,"Movement_Down");
	    Cure_Status_Effect("Global",i,"Flight");
	    Cure_Status_Effect("Global",i,"Silence");
	    Cure_Status_Effect("Global",i,"Sleep");
	    Cure_Status_Effect("Global",i,"Stun");
	    Cure_Status_Effect("Global",i,"Petrify");
	    Cure_Status_Effect("Global",i,"Bleed");
	    Cure_Status_Effect("Global",i,"Magic_Immunity");
	    Cure_Status_Effect("Global",i,"Snare");
	    Cure_Status_Effect("Global",i,"Confusion");
	    Cure_Status_Effect("Global",i,"Berserk");
	    Cure_Status_Effect("Global",i,"Curse_Suppression");
		
		if(!Character_Is_Dead("Local",_character)||(_character.character_ID = global.Player_ID)){//if the character isnt dead, or if they are the main controlled character
	        //global.Current_Health[i] = global.Max_Health[i];//heal them to full HP
			Revive_Character(i);
	    }
	}







}
