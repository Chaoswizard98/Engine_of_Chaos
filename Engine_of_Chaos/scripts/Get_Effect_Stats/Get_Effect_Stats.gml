function Get_Effect_Stats() {
	//var effect, level, return_stat, lookup_type, character;
	var _effect = argument[0];//spell effect
	var _effect_level = argument[1];//level of effect
	var _return_stat = argument[2];//stat we're looking up
	var _lookup_type = "none";
	var _character = noone;

	if(argument_count > 3){
	    _lookup_type = argument[3];
	}
	if(argument_count > 4){
	    _character = argument[4];
	}


	var _spell_icon = spr_Blank_Inventory_Icon;
	var _spell_name = Get_Spell_Display_Name(_effect,"Spell_Name");
	var _menu_name = Get_Spell_Display_Name(_effect,"Menu_Name");
	var _frame_number = 0;
	var _magic_cost = 0;
	var _damage_formula = "Default";//Split, No_Damage
	var _magic_restored = 0;
	var _battle_cutscene_event = "Default";
	var _summon_ID = "none";
	var _end_summon = false;

	var _target_type = "Enemy";
	var _select_type = "Enemy";
	var _min_target_range = 0;
	var _max_target_range = 1;
	var _area = 1;
	var _cursor_pattern = "Default";

	var _use_in_town = false;
	var _target_other = false;//town use only
	var _town_effect = "none";//what effect do we perform in town?
	var _retreat_from_battle = false;//does this effect cause us to flee?

	var _fire_damage = 0;
	var _ice_damage = 0;
	var _water_damage = 0;
	var _lightning_damage = 0;
	var _wind_damage = 0;
	var _earth_damage = 0;
	var _light_damage = 0;
	var _shadow_damage = 0;
	var _magic_damage = 0;
	var _void_damage = 0;

	var _flash_color = c_black;
	var _tint_color = c_white;

	var _heal_ammount = 0;
	var _cure_poison = false;
	var _cure_paralysis = false;
	var _cure_sleep = false;
	var _cure_petrify = false;
	var _cure_bleed = false;
	var _cure_snare = false;
	var _cure_confusion = false;
	var _cure_berserk = false;
	var _cure_stun = false;
	var _cure_curse = false;

	var _poison_potency = 0;
	var _poison_turns_remaining = 0;
	var _attack_up_potency = 0;
	var _attack_up_turns_remaining = 0;
	var _defense_up_potency = 0;
	var _defense_up_turns_remaining = 0;
	var _agility_up_potency = 0;
	var _agility_up_turns_remaining = 0;
	var _movement_up_potency = 0;
	var _movement_up_turns_remaining = 0;
	var _attack_down_potency = 0;
	var _attack_down_turns_remaining = 0;
	var _defense_down_potency = 0;
	var _defense_down_turns_remaining = 0;
	var _agility_down_potency = 0;
	var _agility_down_turns_remaining = 0;
	var _movement_down_potency = 0;
	var _movement_down_turns_remaining = 0;

	var _flight_potency = 0;
	var _flight_turns_remaining = 0;
	var _paralysis_potency = 0;
	var _paralysis_turns_remaining = 0;
	var _stun_potency = 0;
	var _stun_turns_remaining = 0;
	var _sleep_potency = 0;
	var _sleep_turns_remaining = 0;
	var _silence_potency = 0;
	var _silence_turns_remaining = 0;
	var _petrify_potency = 0;
	var _petrify_turns_remaining = 0;
	var _bleed_potency = 0;
	var _bleed_turns_remaining = 0;
	var _snare_potency = 0;
	var _snare_turns_remaining = 0;
	var _confusion_potency = 0;
	var _confusion_turns_remaining = 0;
	var _berserk_potency = 0;
	var _berserk_turns_remaining = 0;
	var _magic_immunity_potency = 0;
	var _magic_immunity_turns_remaining = 0;
	var _curse_suppression_potency = 0;
	var _curse_suppression_turns_remaining = 0;

	switch(_effect){
	    //======
	    //Blaze=
	    //======
	    case "Blaze":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 0;
	        _target_type = "Enemy";
	        _select_type = "Enemy";
	        _flash_color = make_color_rgb(255,0,0);
	        _tint_color = make_colour_rgb(255,106,106);
    
	        switch(_effect_level){
	            case 1: _fire_damage = 8; _max_target_range = 2; _area = 1; _magic_cost = 2; break;
	            case 2: _fire_damage = 10; _max_target_range = 2; _area = 2; _magic_cost = 6; break;
	            case 3: _fire_damage = 15; _max_target_range = 2; _area = 2; _magic_cost = 10; break;
	            case 4: _fire_damage = 40; _max_target_range = 2; _area = 1; _magic_cost = 10; break;
	        }
	    break;
	    //=======
	    //Freeze=
	    //=======
	    case "Freeze":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 1;
	        _target_type = "Enemy";
	        _select_type = "Enemy";
	        _flash_color = make_color_rgb(181,219,255);
	        _tint_color = make_color_rgb(181,232,255);
    
	        switch(_effect_level){
	            case 1: _ice_damage = 10; _max_target_range = 2; _area = 1; _magic_cost = 3; break;
	            case 2: _ice_damage = 12; _max_target_range = 2; _area = 2; _magic_cost = 7; break;
	            case 3: _ice_damage = 18; _max_target_range = 3; _area = 2; _magic_cost = 12; break;
	            case 4: _ice_damage = 50; _max_target_range = 3; _area = 1; _magic_cost = 12; break;
	        }
	    break;
	    //=====
	    //Bolt=
	    //=====
	    case "Bolt":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 2;
	        _target_type = "Enemy";
	        _select_type = "Enemy";
	        _flash_color = make_color_rgb(181,219,255);
	        _tint_color = make_color_rgb(181,232,255);
    
	        switch(_effect_level){
	            case 1: _lightning_damage = 6; _max_target_range = 2; _area = 2; _magic_cost = 8; break;
	            case 2: _lightning_damage = 10; _max_target_range = 3; _area = 3; _magic_cost = 15; break;
	            case 3: _lightning_damage = 15; _max_target_range = 3; _area = 3; _magic_cost = 20; break;
	            case 4: _lightning_damage = 40; _max_target_range = 3; _area = 1; _magic_cost = 20; break;
	        }
	    break;
	    //======
	    //Blast=
	    //======
	    case "Blast":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 3;
	        _target_type = "Enemy";
	        _select_type = "Enemy";
	        _flash_color = make_color_rgb(33,219,222);
	        _tint_color = make_color_rgb(33,219,222);
    
	        switch(_effect_level){
	            case 1: _wind_damage = 6; _max_target_range = 1; _area = 1; _magic_cost = 2; break;
	            case 2: _wind_damage = 8; _max_target_range = 2; _area = 2; _magic_cost = 5; break;
	            case 3: _wind_damage = 12; _max_target_range = 2; _area = 2; _magic_cost = 8; break;
	            case 4: _wind_damage = 30; _max_target_range = 2; _area = 1; _magic_cost = 8; break;
	        }
	    break;
    
	    //=====
	    //Heal=
	    //=====
	    case "Heal":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 4;
	        _target_type = "Ally";
	        _select_type = "Ally";
	        _min_target_range = -1; 
	        _flash_color = make_color_rgb(222,182,222);
	        _cure_bleed = true;
        
	        switch(_effect_level){
	            case 1: _heal_ammount = 15; _max_target_range = 1; _area = 1; _magic_cost = 3; break;
	            case 2: _heal_ammount = 15; _max_target_range = 2; _area = 1; _magic_cost = 5; break;
	            case 3: _heal_ammount = 30; _max_target_range = 3; _area = 1; _magic_cost = 10; break;
	            case 4: _heal_ammount = 999; _max_target_range = 1; _area = 1; _magic_cost = 20; break;
	        }
	    break;
	    //=====
	    //Aura=
	    //=====
	    case "Aura":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 6;
	        _target_type = "Ally";
	        _select_type = "All_Allies";
	        _min_target_range = -1; 
	        _flash_color = make_color_rgb(222,182,222);
	        _cure_bleed = true;
        
	        switch(_effect_level){
	            case 1: _heal_ammount = 15; _max_target_range = 3; _area = 2;  _magic_cost = 7; break;
	            case 2: _heal_ammount = 15; _max_target_range = 3; _area = 3;  _magic_cost = 11; break;
	            case 3: _heal_ammount = 30; _max_target_range = 3; _area = 3;  _magic_cost = 15; break;
	            case 4: _heal_ammount = 999; _max_target_range = 0; _area = 1;  _magic_cost = 20; break;
	        }
	    break;
	    //======
	    //Detox=
	    //======
	    case "Detox":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 5;
	        _target_type = "Ally";
	        _select_type = "Ally";
	        _min_target_range = -1; 
	        _flash_color = make_color_rgb(222,182,222);
	        _cure_poison = true;
	        _damage_formula = "No_Damage";
	        _town_effect = "Detox";
	        _target_other = true;
        
	        switch(_effect_level){
	            case 1: _max_target_range = 1; _area = 1; _magic_cost = 3; break;
	            case 2: _cure_stun = true; _max_target_range = 2; _area = 1; _magic_cost = 6; break;
	            case 3: _cure_stun = true; _cure_curse = true; _max_target_range = 2; _area = 1; _magic_cost = 10; break;
	            case 4: _cure_stun = true; _cure_curse = true; _max_target_range = 3; _area = 3; _magic_cost = 16; break;
	        }
	    break;
	    //=======
	    //Escape=
	    //=======
	    case "Escape":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 7;
	        _use_in_town = true;
	        _target_type = "Ally";
	        _select_type = "Ally";
	        _min_target_range = -1;
	        _max_target_range = 0;
	        _retreat_from_battle = true;
	    break;
	    //============
	    //Summon Wolf=
	    //============
	    case "Summon_Wolf":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 3;
	        _target_type = "Empty_Tile";
	        _select_type = "Empty_Tile";
	        _flash_color = make_color_rgb(33,219,222);
	        _tint_color = make_color_rgb(33,219,222);
	        _battle_cutscene_event = "Summon_Spell";
	        _damage_formula = "No_Damage";
	        _area = 1;
	        _summon_ID = "Wolf_Summon";
	    break;
	    //=======
	    //Recall=
	    //=======
	    case "Recall":
	        _spell_icon = spr_Spell_Icons;
	        _frame_number = 7;
	        _target_type = "Ally";
	        _select_type = "Ally";
	        _min_target_range = -1;
	        _max_target_range = 0;
	        _end_summon = true;
	    break;
	    //===========
	    //Burst Rock=
	    //===========
	    case "Burst_Rock_Explosion":
	        _target_type = "All";
	        _select_type = "All";
	        _void_damage = 10;
	    break;
	    //=============
	    //Healing Item=
	    //=============
	    case "Healing_Item":
	        _target_type = "Ally";
	        _select_type = "Ally";
	        _min_target_range = -1; 
	        _cure_bleed = true;
        
	        switch(_effect_level){
	            case 1: _heal_ammount = 10; break;
	            case 2: _heal_ammount = 20; break;
	            case 3: _heal_ammount = 30; break;
	            case 4: _heal_ammount = 999; break;
	        }
	    break;
	    //===========
	    //Detox Item=
	    //===========
	    case "Detox_Item":
	        _cure_poison = true;
	        _damage_formula = "No_Damage";
	        _town_effect = "Detox";
	        _target_other = true;
	        switch(_effect_level){
	            case 2: 
	                _cure_stun = true; 
	            break;
	            case 3: 
	                _cure_paralysis = true;
	                _cure_sleep = true;
	                _cure_petrify = true;
	                _cure_snare = true;
	                _cure_confusion = true;
	                _cure_berserk = true;
	                _cure_stun = true;
	                _cure_curse = false;
	            break;
	            case 4:
	                _cure_paralysis = true;
	                _cure_sleep = true;
	                _cure_petrify = true;
	                _cure_snare = true;
	                _cure_confusion = true;
	                _cure_berserk = true;
	                _cure_stun = true;
	                _cure_curse = true;
	            break;
	        }
	    break;
	    //==================
	    //Magic Restore Item
	    //==================
	    case "Magic_Restore_Item":
	        _damage_formula = "No_Damage";
	        switch(_effect_level){
	            case 1: _magic_restored = 10; break;
	            case 2: _magic_restored = 20; break;
	            case 3: _magic_restored = 30; break;
	            case 4: _magic_restored = 999; break;
	        }
	    break;
	    case "Brave_Apple":
	        _town_effect = "Brave_Apple";
	        _target_other = true;
	        switch(_effect_level){
	            case 1: _battle_cutscene_event = "Brave_Apple"; break;
	            case 2: _battle_cutscene_event = "Brave_Apple"; break;
	            case 3: _battle_cutscene_event = "Brave_Apple"; break;
	            case 4: _battle_cutscene_event = "Forbidden_Box"; _town_effect = "Forbidden_Box"; _target_other = false; break;
	        }
	    break;
	    case "Attack_Boost":
	        _battle_cutscene_event = "Attack_Boost";
	        _town_effect = "Attack_Boost";
	        _target_other = true;
	    break;
	    case "Defense_Boost":
	        _battle_cutscene_event = "Defense_Boost";
	        _town_effect = "Defense_Boost";
	        _target_other = true;
	    break;
	    case "Agility_Boost":
	        _battle_cutscene_event = "Agility_Boost";
	        _town_effect = "Agility_Boost";
	        _target_other = true;
	    break;
	    case "Movement_Boost":
	        _battle_cutscene_event = "Movement_Boost";
	        _town_effect = "Movement_Boost";
	        _target_other = true;
	    break;
	    case "Max_Health_Boost":
	        _battle_cutscene_event = "Max_Health_Boost";
	        _town_effect = "Max_Health_Boost";
	        _target_other = true;
	    break;
	    case "Max_Magic_Boost":
	        _battle_cutscene_event = "Max_Magic_Boost";
	        _town_effect = "Max_Magic_Boost";
	        _target_other = true;
	    break;
	}

	switch(_return_stat){
	    case "Spell_Icon": return _spell_icon; break;
	    case "Menu_Name": return _menu_name; break;
	    case "Frame_Number": return _frame_number; break;
	    case "Spell_Name": return _spell_name; break;
	    case "Use_In_Town": return _use_in_town; break;
	    case "Target_Other": return _target_other; break;
	    case "Town_Effect": return _town_effect; break;
	    case "Magic_Cost": return _magic_cost; break;
	    case "Damage_Formula": return _damage_formula; break;
	    case "Min_Target_Range": return _min_target_range; break;
	    case "Max_Target_Range": return _max_target_range; break;
	    case "Area": return _area; break;
	    case "Cursor_Pattern": return _cursor_pattern; break;
	    case "Target_Type": return _target_type; break;
	    case "Select_Type": return _select_type; break;
	    case "Retreat_From_Battle": return _retreat_from_battle; break;
	    case "Battle_Cutscene_Event": return _battle_cutscene_event; break;
	    case "Summon_ID": return _summon_ID; break;
	    case "End_Summon": return _end_summon; break;
    
	    case "Fire_Damage": return _fire_damage; break;
	    case "Ice_Damage": return _ice_damage; break;
	    case "Water_Damage": return _water_damage; break;
	    case "Lightning_Damage": return _lightning_damage; break;
	    case "Wind_Damage": return _wind_damage; break;
	    case "Earth_Damage": return _earth_damage; break;
	    case "Light_Damage": return _light_damage; break;
	    case "Shadow_Damage": return _shadow_damage; break;
	    case "Magic_Damage": return _magic_damage; break;
	    case "Void_Damage": return _void_damage; break;
    
    
	    case "Flash_Color": return _flash_color; break;
	    case "Tint_Color": return _tint_color; break;
	    case "Heal_Ammount": return _heal_ammount; break;
	    case "Magic_Restored": return _magic_restored; break;
    
	    case "Cure_Poison": return _cure_poison; break;
	    case "Cure_Stun": return _cure_stun; break;
	    case "Cure_Curse": return _cure_curse; break;
	    case "Cure_Paralysis": return _cure_paralysis; break;
	    case "Cure_Sleep": return _cure_sleep; break;
	    case "Cure_Petrify": return _cure_petrify; break;
	    case "Cure_Bleed": return _cure_bleed; break;
	    case "Cure_Snare": return _cure_snare; break;
	    case "Cure_Confusion": return _cure_confusion; break;
	    case "Cure_Berserk": return _cure_berserk; break;
    
	    case "Poison_Potency": return _poison_potency; break;
	    case "Poison_Turns_Remaining": return _poison_turns_remaining; break;
    
	    case "Attack_Up_Potency": return _attack_up_potency; break;
	    case "Attack_Up_Turns_Remaining": return _attack_up_turns_remaining; break;
	    case "Defense_Up_Potency": return _defense_up_potency; break;
	    case "Defense_Up_Turns_Remaining": return _defense_up_turns_remaining; break;
	    case "Agility_Up_Potency": return _agility_up_potency; break;
	    case "Agility_Up_Turns_Remaining": return _agility_up_turns_remaining; break;
	    case "Movement_Up_Potency": return _movement_up_potency; break;
	    case "Movement_Up_Turns_Remaining": return _movement_up_turns_remaining; break;
    
	    case "Attack_Down_Potency": return _attack_down_potency; break;
	    case "Attack_Down_Turns_Remaining": return _attack_down_turns_remaining; break;
	    case "Defense_Down_Potency": return _defense_down_potency; break;
	    case "Defense_Down_Turns_Remaining": return _defense_down_turns_remaining; break;
	    case "Agility_Down_Potency": return _agility_down_potency; break;
	    case "Agility_Down_Turns_Remaining": return _agility_down_turns_remaining; break;
	    case "Movement_Down_Potency": return _movement_down_potency; break;
	    case "Movement_Down_Turns_Remaining": return _movement_down_turns_remaining; break;
    
	    case "Flight_Potency": return _flight_potency; break;
	    case "Flight_Turns_Remaining": return _flight_turns_remaining; break;
	    case "Paralysis_Potency": return _paralysis_potency; break;
	    case "Paralysis_Turns_Remaining": return _paralysis_turns_remaining; break;
	    case "Silence_Potency": return _silence_potency; break;
	    case "Silence_Turns_Remaining": return _silence_turns_remaining; break;
	    case "Sleep_Potency": return _sleep_potency; break;
	    case "Sleep_Turns_Remaining": return _sleep_turns_remaining; break;
	    case "Stun_Potency": return _stun_potency; break;
	    case "Stun_Turns_Remaining": return _stun_turns_remaining; break;
	    case "Petrify_Potency": return _petrify_potency; break;
	    case "Petrify_Turns_Remaining": return _petrify_turns_remaining; break;
	    case "Bleed_Potency": return _bleed_potency; break;
	    case "Bleed_Turns_Remaining": return _bleed_turns_remaining; break;
	    case "Magic_Immunity_Potency": return _magic_immunity_potency; break;
	    case "Magic_Immunity_Turns_Remaining": return _magic_immunity_turns_remaining; break;
	    case "Snare_Potency": return _snare_potency; break;
	    case "Snare_Turns_Remaining": return _snare_turns_remaining; break;
	    case "Confusion_Potency": return _confusion_potency; break;
	    case "Confusion_Turns_Remaining": return _confusion_turns_remaining; break;
	    case "Berserk_Potency": return _berserk_potency; break;
	    case "Berserk_Turns_Remaining": return _berserk_turns_remaining; break;
	    case "Curse_Suppression_Potency": return _curse_suppression_potency; break;
	    case "Curse_Suppression_Turns_Remaining": return _curse_suppression_turns_remaining; break;
    
	    default: show_message("Return stat not registered."); break;
	}






	/*
	var Spell, Level, Range, Sprite, Area, ManaCost, RangeLimit, Target, SpellType, TintColor, FlashColor, Return, CurePoison, ManaRestore, TargetAllAllies, TargetAllEnemies, TargetAllUnits, SpellAIType;
	var SleepChance, SilenceChance, PoisonChance, AttackBuffStrength, DefenseBuffStrength, AgilityBuffStrength, AttackDebuffStrength, DefenseDebuffStrength, AgilityDebuffStrength;
	var HealDamage, FireDamage, IceDamage, WindDamage, EarthDamage, LightningDamage, LightDamage, DarknessDamage, VoidDamage, SelectType, PoisonPotency, Uncurse, Shield;
	var HitChanceDebuffStrength, Confusion, MuddleChance, TargetOther;

	Spell = argument0;
	Level = argument1;
	Return = argument2;

	//Defaults
	Sprite = BlankSpellSlotSprite;
	//HealDamage = 0;
	Range = 0;
	RangeLimit = -1;
	Area = 1;
	ManaCost = 1;
	Target = 'Allies';
	SelectType = 'Allies';
	CurePoison = false;
	TintColor = make_color_rgb(255,255,255);//default to white (no tint)
	FlashColor = make_color_rgb(0,0,0);//default to black (no flash)
	ManaRestore = 0;//this spell restores 0 mana
	TargetAllAllies = false;
	TargetAllEnemies = false;
	TargetAllUnits = false;
	SpellAIType = 'DamageMagic';//For AI related stuff. Either 'DamageMagic' or 'HealMagic'
	SleepChance = 0;
	SilenceChance = 0;
	SpellType = 'Damage';
	PoisonChance = 0;
	PoisonPotency = 0;
	AttackBuffStrength = 0;
	DefenseBuffStrength = 0;
	AgilityBuffStrength = 0;
	HitChanceDebuffStrength = 0;
	MuddleChance = 0;
	TargetOther = false;//For in town use

	Confusion = false;

	HealDamage = 0;
	FireDamage = 0;
	IceDamage = 0;
	WindDamage = 0;
	EarthDamage = 0;
	LightningDamage = 0;
	LightDamage = 0;
	DarknessDamage = 0;
	VoidDamage = 0;

	AttackDebuffStrength = 0;
	DefenseDebuffStrength = 0;
	AgilityDebuffStrength = 0;
	Uncurse = 0;
	Shield = 0;



	switch(Spell){
	//=======
	//=Blaze=
	//=======
	case 'Blaze':
	    Sprite = BlazeIconSprite;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    RangeLimit = 0;
	    SpellType = 'Damage';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'DamageMagic';
    
	    switch(Level){
	    case 1:
	        FireDamage = 6;
	        Range = 2;
	        Area = 1;
	        ManaCost = 2;
	    break;
	    case 2:
	        FireDamage = 10;
	        Range = 2;
	        Area = 2;
	        ManaCost = 6;
	    break;
	    case 3:
	        FireDamage = 15;
	        Range = 2;
	        Area = 2;
	        ManaCost = 10;
	    break;
	    case 4:
	        FireDamage = 40;
	        Range = 2;
	        Area = 1;
	        ManaCost = 10;
	    break;
	    }
	break;
	//========
	//=Freeze=
	//========
	case 'Freeze':
	    SpellType = 'Damage';
	    Sprite = FreezeIconSprite;
	    RangeLimit = 0;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    FlashColor = make_color_rgb(181,219,255);//may not be accurate
	    TintColor = make_color_rgb(181,232,255);
	    SpellAIType = 'DamageMagic';
    
	    switch(Level){
	    case 1:
	        IceDamage = 10;
	        Range = 2;
	        Area = 1;
	        ManaCost = 3;
	    break;
	    case 2:
	        IceDamage = 12;
	        Range = 2;
	        Area = 2;
	        ManaCost = 7;
	    break;
	    case 3:
	        IceDamage = 18;
	        Range = 3;
	        Area = 2;
	        ManaCost = 12;
	    break;
	    case 4:
	        IceDamage = 50;
	        Range = 3;
	        Area = 1;
	        ManaCost = 12;
	    break;
	    }
	break;
	//======
	//=Bolt=
	//======
	case 'Bolt':
	    Sprite = BoltIconSprite;
	    RangeLimit = 0;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    SpellType = 'Damage';
	    FlashColor = make_color_rgb(181,219,255);
	    SpellAIType = 'DamageMagic';
    
	    switch(Level){
	    case 1:
	        LightningDamage = 14;
	        Range = 2;
	        Area = 2;
	        ManaCost = 8;
	    break;
	    case 2:
	        LightningDamage = 16;
	        Range = 3;
	        Area = 3;
	        ManaCost = 15;
	    break;
	    case 3:
	        LightningDamage = 25;
	        Range = 3;
	        Area = 3;
	        ManaCost = 20;
	    break;
	    case 4:
	        LightningDamage = 60;
	        Range = 3;
	        Area = 1;
	        ManaCost = 20;
	    break;
	    }
	break;
	//======
	//=Heal=
	//======
	case 'Heal':
	    Sprite = HealIconSprite;
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    FlashColor = make_color_rgb(222,182,222);
	    SpellAIType = 'HealMagic';
    
	    switch(Level){
	    case 1:
	        HealDamage = 15;
	        Range = 1;
	        Area = 1;
	        ManaCost = 3;
	    break;
	    case 2:
	        HealDamage = 15;
	        Range = 2;
	        Area = 1;
	        ManaCost = 5;
	    break;
	    case 3:
	        HealDamage = 30;
	        Range = 3;
	        Area = 1;
	        ManaCost = 10;
	    break;
	    case 4:
	        HealDamage = 1000;
	        Range = 1;
	        Area = 1;
	        ManaCost = 20;
	    break;
	    }
	break;
	//======
	//=Aura=
	//======
	case 'Aura':
	    SpellType = 'Heal';
	    Sprite = AuraIconSprite;
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    FlashColor = make_color_rgb(222,182,222);
	    SpellAIType = 'HealMagic';
    
	    switch(Level){
	    case 1:
	        HealDamage = 15;
	        Range = 2;
	        Area = 2;
	        ManaCost = 7;
	    break;
	    case 2:
	        HealDamage = 15;
	        Range = 3;
	        Area = 3;
	        ManaCost = 11;
	    break;
	    case 3:
	        HealDamage = 30;
	        Range = 3;
	        Area = 3;
	        ManaCost = 15;
	    break;
	    case 4:
	        TargetAllAllies = true;
	        HealDamage = 999;
	        Range = 0;
	        Area = 1;
	        ManaCost = 20;
	    break;
	    }
	break;
	//=======
	//=Sleep=
	//=======
	case 'Sleep':
	    Sprite = SleepIconSprite;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    RangeLimit = 0;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
    
	    switch(Level){
	    case 1:
	        //Damage = 0;
	        Range = 2;
	        Area = 1;
	        ManaCost = 4;
	        SleepChance = 1;
	    break;
	    }
	break;
	//========
	//=Dispel=
	//========
	case 'Dispel':
	    Sprite = DispellIconSprite;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    RangeLimit = 0;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
    
	    switch(Level){
	    case 1:
	        //Damage = 0;
	        Range = 2;
	        Area = 2;
	        ManaCost = 5;
	        SilenceChance = 1;
	    break;
	    }
	break;
	//========
	//=Attack=
	//========
	case 'Attack':
	    Sprite = AttackIconSprite;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    RangeLimit = -1;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
    
	    switch(Level){
	    case 1:
	        Range = 3;
	        Area = 1;
	        ManaCost = 7;
	        AttackBuffStrength = 3;
	    break;
	    }
	break;
	//=======
	//=Boost=
	//=======
	case 'Boost':
	    Sprite = BoostIconSprite;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    RangeLimit = -1;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
    
	    switch(Level){
	    case 1:
	        //Damage = 0;
	        Range = 2;
	        Area = 2;
	        ManaCost = 2;
	        DefenseBuffStrength = 3;
	        AgilityBuffStrength = 3;
	    break;
	    case 2:
	        //Damage = 0;
	        Range = 3;
	        Area = 3;
	        ManaCost = 5;
	        DefenseBuffStrength = 3;
	        AgilityBuffStrength = 3;
	    break;
	    }
	break;
	//======
	//=Slow=
	//======
	case 'Slow':
	    Sprite = SlowIconSprite;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    RangeLimit = 0;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
    
	    switch(Level){
	    case 1:
	        //Damage = 0;
	        Range = 1;
	        Area = 2;
	        ManaCost = 3;
	        DefenseDebuffStrength = 3;
	        AgilityDebuffStrength = 3;
	    break;
	    case 2:
	        //Damage = 0;
	        Range = 2;
	        Area = 3;
	        ManaCost = 6;
	        DefenseDebuffStrength = 3;
	        AgilityDebuffStrength = 3;
	    break;
	    }
	break;
	//========
	//=Muddle=
	//========
	case 'Muddle':
	    Sprite = MuddleIconSprite;
	    Target = 'Enemies';
	    SelectType = 'Enemies';
	    RangeLimit = 0;
	    SpellType = 'StatusEffect';
	    TintColor = make_color_rgb(255,102,102);
	    FlashColor = make_color_rgb(255,0,0);
	    SpellAIType = 'StatusEffectMagic';
	    MuddleChance = .25;
    
	    switch(Level){
	    case 1:
	        Range = 1;
	        Area = 2;
	        ManaCost = 3;
	        HitChanceDebuffStrength = .5;
	    break;
	    case 2:
	        Range = 2;
	        Area = 3;
	        ManaCost = 6;
	        HitChanceDebuffStrength = .5;
	        MuddleChance = 1;
	        Confusion = true;
	    break;
	    }
	break;
	//=======
	//=Detox=
	//=======
	case 'Detox':
	    Sprite = DetoxIconSprite;
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    CurePoison = true;
	    SpellType = 'Heal';
	    FlashColor = make_color_rgb(222,182,222);
	    SpellAIType = 'HealMagic';
	    TargetOther = true;
    
	    switch(Level){
	    case 1:
	        Range = 1;
	        Area = 1;
	        ManaCost = 3;
	    break;
	    case 2:
	        Range = 2;
	        Area = 1;
	        ManaCost = 6;
	    break;
	    case 3:
	        Range = 2;
	        Area = 1;
	        ManaCost = 10;
	    break;
	    case 4:
	        Range = 3;
	        Area = 3;
	        ManaCost = 16;
	    break;
	    }
	break;

	//============
	//=Minor Heal=
	//============
	case 'Minor Heal':
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    HealDamage = 10;
	    Range = 1;
	    Area = 1;
	    SpellAIType = 'HealMagic';
	break;
	//=============
	//=Middle Heal=
	//=============
	case 'Middle Heal':
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    HealDamage = 20;
	    Range = 1;
	    Area = 1;
	    SpellAIType = 'HealMagic';
	break;
	//============
	//=Major Heal=
	//============
	case 'Major Heal':
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    HealDamage = 30;
	    Range = 1;
	    Area = 1;
	    SpellAIType = 'HealMagic';
	break;
	//===========
	//=Full Heal=
	//===========
	case 'Full Heal':
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    HealDamage = 1000;
	    Range = 1;
	    Area = 1;
	    SpellAIType = 'HealMagic';
	break;

	//==============
	//=Mana Restore=
	//==============
	case 'Mana Restore':
	    switch(Level){
	    case 1:
	        RangeLimit = -1;
	        Target = 'Allies';
	        SelectType = 'Allies';
	        SpellType = 'Heal';
	        //Damage = 0;
	        Range = 1;
	        Area = 1;
	        ManaRestore = 20;
	        SpellAIType = 'HealMagic';
	    break;
	    case 4:
	        TargetAllAllies = true;
	        RangeLimit = -1;
	        Target = 'Allies';
	        SelectType = 'Allies';
	        SpellType = 'Heal';
	        //Damage = 0;
	        Range = -1;
	        Area = 1;
	        ManaRestore = 1000;
	        SpellAIType = 'HealMagic';
	    break;
	    }
	break;

	//========
	//=Escape=
	//========
	case 'Escape':
	    Sprite = EscapeIconSprite;
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    //Damage = 0;
	    Range = 0;
	    Area = 1;
	    ManaCost = 8;
	    SpellAIType = 'HealMagic';
	break;

	//=======
	//=Debug=
	//=======
	case 'Quake':
	    Sprite = BoltIconSprite;
	    RangeLimit = -1;
	    Target = 'Enemies';
	    SelectType = 'Allies';
	    SpellType = 'Damage';
	    FlashColor = make_color_rgb(181,219,255);
	    SpellAIType = 'DamageMagic';
	    Range = 0;
	    Area = 3;
	    ManaCost = 1;
	    LightningDamage = 14;
	    SpellAIType = 'DamageMagic';
	break;
	case 'Summon':
	    Sprite = BlastIconSprite;
	    RangeLimit = 0;
	    Target = 'EmptyTile';
	    SelectType = 'EmptyTile';
	    SpellType = 'Summon';
	    FlashColor = make_color_rgb(181,219,255);
	    SpellAIType = 'SummonMagic';
    
	    switch(Level){
	    case 1:
	        Range = 2;
	        Area = 1;
	        ManaCost = 1;
	        break;
	    case 2:
	        Range = 3;
	        Area = 2;
	        ManaCost = 2;
	        break;
	    }
	    //LightningDamage = 14;
	    //SpellAIType = 'SuMagic';
	break;
	//========
	//=Recall=
	//========
	case 'Recall':
	    Sprite = EscapeIconSprite;
	    RangeLimit = -1;
	    Target = 'Allies';
	    SelectType = 'Allies';
	    SpellType = 'Heal';
	    Range = 0;
	    Area = 1;
	    ManaCost = 0;
	    SpellAIType = 'HealMagic';
	break;
	}

	//Blast Tint
	//FlashColor = make_color_rgb(33,219,222);
	/*
	else{
	    Sprite = BlankSpellSlotSprite;
	    Damage = 0;
	    Range = 0;
	    Area = 1;
	    ManaCost = 0;
	    Target = 2;
	    RangeLimit = 0;
	}*/

	/*
	switch(Return){
	    case "Sprite": return Sprite; break;
	    case "SpellRange": return Range; break;
	    case "Area": return Area; break;
	    case "ManaCost": return ManaCost; break;
	    case "TargetType": return Target; break;
	    case "SelectType": return SelectType; break;
    
	    case "SpellLimit": return RangeLimit; break;
	    case "SpellType": return SpellType; break;
	    case "CurePoison": return CurePoison; break;
	    case "TintColor": return TintColor; break;
	    case "FlashColor": return FlashColor; break;
	    case "ManaRestore": return ManaRestore; break;
	    case "TargetAllAllies": return TargetAllAllies; break;
	    case "TargetAllEnemies": return TargetAllEnemies; break;
	    case "TargetAllUnits": return TargetAllUnits; break;
	    case "SpellAIType": return SpellAIType; break;
	    case "SleepChance": return SleepChance; break;
	    case "SilenceChance": return SilenceChance; break;
	    case "PoisonChance": return PoisonChance; break;
	    case "PoisonPotency": return PoisonPotency; break;
	    case "AttackBuffStrength": return AttackBuffStrength; break;
	    case "DefenseBuffStrength": return DefenseBuffStrength; break;
	    case "AgilityBuffStrength": return AgilityBuffStrength; break;
	    case "AttackDebuffStrength": return AttackDebuffStrength; break;
	    case "DefenseDebuffStrength": return DefenseDebuffStrength; break;
	    case "AgilityDebuffStrength": return AgilityDebuffStrength; break;
    
	    case "MuddleChance": return MuddleChance; break;
	    case "HitChanceDebuffStrength": return HitChanceDebuffStrength; break;
	    case "Confusion": return Confusion; break;
    
	    case "HealDamage": return HealDamage; break;
	    case "FireDamage": return FireDamage; break;
	    case "IceDamage": return IceDamage; break;
	    case "WindDamage": return WindDamage; break;
	    case "EarthDamage": return EarthDamage; break;
	    case "LightningDamage": return LightningDamage; break;
	    case "LightDamage": return LightDamage; break;
	    case "DarknessDamage": return DarknessDamage; break;
	    case "VoidDamage": return VoidDamage; break;
    
	    case "Uncurse": return Uncurse; break;
	    case "Shield": return Shield; break;
	    case "TargetOther": return TargetOther; break;
	}












/* end Get_Effect_Stats */
}
