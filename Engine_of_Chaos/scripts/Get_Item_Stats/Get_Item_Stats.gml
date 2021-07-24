function Get_Item_Stats() {
	var _item, _return_stat, _lookup_type, _character;

	_item = argument[0];
	_return_stat = argument[1];
	_lookup_type = "none";
	if(argument_count > 2){
	    _lookup_type = argument[2];
	}
	if(argument_count > 3){
	    _character = argument[3];
	}

	var _class = "none";
	if(_lookup_type != "none"){
	    _class = Get_Character_Class(_lookup_type,_character,"Abbreviation");
	}


	//==============
	//Default Stats=
	//==============
	var _item_icon = spr_Blank_Inventory_Icon;//inventory sprite
	var _frame_number = 0;//frame number
	var _item_name = Get_Item_Display_Name(_item,"Item_Name");//name of item (for dialogue)
	var _menu_name = Get_Item_Display_Name(_item,"Menu_Name");//name as it appears in menus
	var _main_hand = false;//can we equip it?
	var _off_hand = false;//can we equip it?
	var _can_drop = "true";//can we drop / sell it?
	var _curse_type = "none";//is this item cursed? what effect does it have?
	//equipment stats
	var _attack = 0;
	var _defense = 0;
	var _agility = 0;
	var _movement_range = 0;
	var _movement_type = "none";
	var _turns = 0;//bonus turns in battle
	var _attack_target_type = "none";
	var _attack_select_type = "none";
	var _max_attack_range = 0;
	var _min_attack_range = 0;
	var _attack_size = 0;
	var _attack_pattern = "none";
	//effect variables
	var _use_in_town = true;//remove this, test for 'town effect' instead
	var _target_other = false;
	var _town_effect = "none";
	var _town_effect_level = 1;
	var _max_use_range = 0;
	var _min_use_range = 0;
	var _use_size = 0;
	var _use_target_type = "Enemy";
	var _use_select_type = "none";
	var _use_cursor_pattern = "none";
	var _use_effect = "none";
	var _use_effect_level = 1;
	//Costume Variables
	var _overworld_sprite_ID = "none";
	var _portrait_sprite_ID = "none";
	var _voice_ID = "none";
	//Shop Variables
	var _value = 0;//base cost of the item
	var _can_sell = true;//can we sell this item?
	var _shop_id = -1;//do we sell to deals / other quantity shops? -1 for no, 0 for deals, etc
	var _shop_type = "Item";//For shop use, can be 'Item' or 'Weapon'. Changes member list display.  
	//Degradable Items
	var _use_degrade_chance = 0;//chance to degrade on item use
	var _attack_degrade_chance = 0;//chance to degrade when attacking
	var _degrades_to = "none";//item this turns into when damaged
	var _repairs_to = "none";//item this turns into when repaired
	var _repair_cost = 0;//cost to repair this item.
	var _repair_type = "Default";//which shops can repair this item?
	var _accuracy = 0;
	var _evasion = 0;
	var _crit = 0;
	var _counter = 0;
	var _multi_strike = 0;
	var _special_attack = 0;
	var _special_attack_type = "none";

	var _battle_cutscene_sprite_ID = "none";
	var _battle_sprite = spr_Blank_Sprite;
	var _projectile = "none";

	var _word_of_power = "none";
	var _word_of_power_level = 1;

	var _damaged_message = "";//"Item_Damaged" Identifiers for language files. Can also be custom, just make sure to add it to the language files
	var _broken_message = "";//"Item_Broke"
	var _attack_range_type = "none";

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

	var _fire_resistance = 0;
	var _ice_resistance = 0;
	var _water_resistance = 0;
	var _lightning_resistance = 0;
	var _wind_resistance = 0;
	var _earth_resistance = 0;
	var _light_resistance = 0;
	var _shadow_resistance = 0;
	var _magic_resistance = 0;

	var _attack_down_resistance = 0;
	var _attack_down_infliction_chance = 0;
	var _attack_down_infliction_potency = 0;
	var _attack_down_infliction_turns_remaining = 0;

	var _defense_down_resistance = 0;
	var _defense_down_infliction_chance = 0;
	var _defense_down_infliction_potency = 0;
	var _defense_down_infliction_turns_remaining = 0;

	var _agility_down_resistance = 0;
	var _agility_down_infliction_chance = 0;
	var _agility_down_infliction_potency = 0;
	var _agility_down_infliction_turns_remaining = 0;

	var _movement_down_resistance = 0;
	var _movement_down_infliction_chance = 0;
	var _movement_down_infliction_potency = 0;
	var _movement_down_infliction_turns_remaining = 0;

	var _poison_resistance = 0;
	var _poison_infliction_chance = 0;
	var _poison_infliction_potency = 0;
	var _poison_infliction_turns_remaining = 0;

	var _paralysis_resistance = 0;
	var _paralysis_infliction_chance = 0;
	var _paralysis_infliction_potency = 0;
	var _paralysis_infliction_turns_remaining = 0;

	var _silence_resistance = 0;
	var _silence_infliction_chance = 0;
	var _silence_infliction_potency = 0;
	var _silence_infliction_turns_remaining = 0;

	var _sleep_resistance = 0;
	var _sleep_infliction_chance = 0;
	var _sleep_infliction_potency = 0;
	var _sleep_infliction_turns_remaining = 0;

	var _stun_resistance = 0;
	var _stun_infliction_chance = 0;
	var _stun_infliction_potency = 0;
	var _stun_infliction_turns_remaining = 0;

	var _petrify_resistance = 0;
	var _petrify_infliction_chance = 0;
	var _petrify_infliction_potency = 0;
	var _petrify_infliction_turns_remaining = 0;

	var _bleed_resistance = 0;
	var _bleed_infliction_chance = 0;
	var _bleed_infliction_potency = 0;
	var _bleed_infliction_turns_remaining = 0;

	var _snare_resistance = 0;
	var _snare_infliction_chance = 0;
	var _snare_infliction_potency = 0;
	var _snare_infliction_turns_remaining = 0;

	var _confusion_resistance = 0;
	var _confusion_infliction_chance = 0;
	var _confusion_infliction_potency = 0;
	var _confusion_infliction_turns_remaining = 0;

	var _berserk_resistance = 0;
	var _berserk_infliction_chance = 0;
	var _berserk_infliction_potency = 0;
	var _berserk_infliction_turns_remaining = 0;



	//===================
	//custom item script=
	//===================
	var _custom_item;
	_custom_item =  false;
	if(string_length(_item) > 4){
	    if(string_copy(_item,1,4) = "<ci_"){//if custom item (item id begins with <ci_)
	        //run custom item script (in case you need different handlers, possibly for randomly generated items)
	        show_message("Custom script goes here!");
	        _custom_item = true;
	    }
	}
	//=================
	//Non custom items=
	//=================
	if(!_custom_item){
	    switch(_item){
	        case "Remove":
	            _item_icon = spr_Remove_Icon;
	            _frame_number = 0;
	        break;
	        //===============
	        //Battered Sword=
	        //===============
	        case "Battered_Sword":
	            _item_icon = spr_Weapon_Icons;
	            _frame_number = 0;
	            _attack = 3;
	            _value = 100;
	            _shop_type = "Equipment";
	            _battle_sprite = spr_Battered_Sword;
	            switch(_class){
	                case "SDMN": _main_hand = true; break;
	                case "HERO": _main_hand = true; break;
	            }
	        break;
	        //===============
	        //Battered Arrow=
	        //===============
	        case "Battered_Arrow":
	            _item_icon = spr_Weapon_Icons;
	            _frame_number = 1;
	            _value = 120;
	            _shop_type = "Equipment";
	            _attack = 3;
	            _min_attack_range = 1;
	            _max_attack_range = 1;
	            _projectile = "Battered_Arrow";
	            _battle_sprite = spr_Battered_Arrow;
            
	            switch(_class){
	                case "ARCR": _main_hand = true; break;
	                case "SNPR": _main_hand = true; break;
	            }
	        break;
	        //=============
	        //Wooden Staff=
	        //=============
	        case "Wooden_Staff":
	            _item_icon = spr_Weapon_Icons;
	            _frame_number = 2;
	            _value = 80;
	            _shop_type = "Equipment";
	            _attack = 3;
	            _battle_sprite = spr_Wooden_Staff;
            
	            switch(_class){
	                case "HEAL": _main_hand = true; break;
	                case "MAGE": _main_hand = true; break;
	            }
	        break;
	        //===============
	        //Battered Knife=
	        //===============
	        case "Battered_Knife":
	            _item_icon = spr_Weapon_Icons;
	            _frame_number = 3;
	            _value = 80;
	            _shop_type = "Equipment";
	            _attack = 3;
	            switch(_class){
	                case "THIF": _main_hand = true; break;
	            }
	        break;
	        //=============
	        //Wooden Spear=
	        //=============
	        case "Wooden_Spear":
	            _item_icon = spr_Weapon_Icons;
	            _frame_number = 4;
	            _value = 80;
	            _shop_type = "Equipment";
	            _attack = 3;
	            _max_attack_range = 1;
	            switch(_class){
	                case "KNT": _main_hand = true; break;
	            }
	        break;
        
	        //=====
	        //Beer=
	        //=====
	        case "Beer":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 10;
	            _value = 10;
	        break;
	        //================
	        //Ring of Chicken=
	        //================
	        case "Ring_Of_Chicken":
	            _item_icon = spr_Item_Icons;
	            _overworld_sprite_ID = "Chicken";
	            _portrait_sprite_ID = "Chicken";
	            _voice_ID = "Chicken";
	            _battle_cutscene_sprite_ID = "Chicken";
	            _off_hand = true;
	            _shop_type = "Equipment";
	            _frame_number = 15;
	            _value = 10;
	        break;
	        //===========
	        //Water Ring=
	        //===========
	        case "Water_Ring":
	            _item_icon = spr_Item_Icons;
	            _off_hand = true;
	            _shop_type = "Equipment";
	            _frame_number = 5;
	            _value = 100;
	            _movement_type = "Flying";
	        break;
	        //============
	        //Jogurt Ring=
	        //============
	        case "Jogurt_Ring":
	            _item_icon = spr_Item_Icons;
	            _off_hand = true;
	            _shop_type = "Equipment";
	            _frame_number = 37;
	            _value = 40;
	        break;
	        //======
	        //Paper=
	        //======
	        case "Paper":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 16;
	            _value = 10;
	            _can_sell = false;
	            _can_drop = false;
	        break;
	        //============
	        //Medical Herb
	        //============
	        case "Medical_Herb":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 17;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Healing_Item";
	            _use_effect_level = 1;
	            _value = 10;
	        break;
	        //============
	        //Healing Seed
	        //============
	        case "Healing_Seed":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 18;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Healing_Item";
	            _use_effect_level = 2;
	            _value = 200;
	        break;
	        //============
	        //Healing Drop
	        //============
	        case "Healing_Drop":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 19;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Healing_Item";
	            _use_effect_level = 3;
	            _value = 300;
	        break;
	        //=============
	        //Healing Water
	        //=============
	        case "Healing_Water":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 20;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Healing_Item";
	            _use_effect_level = 4;
	            _value = 400;
	        break;
	        //============
	        //Healing Rain
	        //============
	        case "Healing_Rain":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 21;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "All_Allies";
	            _use_effect = "Healing_Item";
	            _use_effect_level = 4;
	            _value = 10000;
	        break;
	        //============
	        //Fairy Powder
	        //============
	        case "Fairy_Powder":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 22;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Detox_Item";
	            _use_effect_level = 3;
	            _value = 100;
	        break;
	        //==========
	        //Fairy Tear
	        //==========
	        case "Fairy_Tear":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 23;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Magic_Restore_Item";
	            _use_effect_level = 2;
	            _value = 300;
	        break;
	        //=============
	        //Light Of Hope
	        //=============
	        case "Light_Of_Hope":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 24;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "All_Allies";
	            _use_effect = "Magic_Restore_Item";
	            _use_effect_level = 4;
	            _value = 10000;
	        break;
	        //========
	        //Antidote
	        //========
	        case "Antidote":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 25;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _target_other = true;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Detox_Item";
	            _use_effect_level = 1;
	            _town_effect = "Detox_Item";
	            _town_effect_level = 1;
	            _value = 20;
	        break;
	        //==========
	        //Angel Wing
	        //==========
	        case "Angel_Wing":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 26;
	            _use_degrade_chance = 100;
	            _max_use_range = 0;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Escape";
	            _use_effect_level = 1;
	            _value = 40;
	        break;
	        //===========
	        //Brave Apple
	        //===========
	        case "Brave_Apple":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 27;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Brave_Apple";
	            _use_effect_level = 1;
            
	            _target_other = true;
	            _town_effect = "Brave_Apple";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        //=============
	        //Forbidden Box
	        //=============
	        case "Forbidden_Box":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 30;
	            _max_use_range = 0;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "All_Allies";
	            _use_effect = "Brave_Apple";
	            _use_effect_level = 4;
            
	            _town_effect = "Brave_Apple";
	            _town_effect_level = 4;
	            _value = 99999;
	        break;
	        //============
	        //Shining Ball
	        //============
	        case "Shining_Ball":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 28;
	            _use_degrade_chance = 100;
	            _max_use_range = 2;
	            _min_use_range = 0;
	            _use_size = 2;
	            _use_target_type = "Enemy";
	            _use_select_type = "Enemy";
	            _use_effect = "Blaze";
	            _use_effect_level = 3;
	            _value = 1000;
	        break;
	        //========
	        //Blizzard
	        //========
	        case "Blizzard":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 29;
	            _use_degrade_chance = 100;
	            _max_use_range = 2;
	            _min_use_range = 0;
	            _use_size = 2;
	            _use_target_type = "Enemy";
	            _use_select_type = "Enemy";
	            _use_effect = "Freeze";
	            _use_effect_level = 3;
	            _value = 1200;
	        break;
	        case "Power_Water":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 31;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Attack_Boost";
	            _use_effect_level = 1;
            
	            _target_other = true;
	            _town_effect = "Attack_Boost";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        case "Protect_Milk":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 32;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Defense_Boost";
	            _use_effect_level = 1;
            
	            _target_other = true;
	            _town_effect = "Defense_Boost";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        case "Quick_Chicken":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 33;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Agility_Boost";
	            _use_effect_level = 1;
            
	            _target_other = true;
	            _town_effect = "Agility_Boost";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        case "Cheerful_Bread":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 35;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Max_Health_Boost";
	            _use_effect_level = 1;
	            _target_other = true;
	            _town_effect = "Max_Health_Boost";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        case "Bright_Honey":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 36;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Max_Magic_Boost";
	            _use_effect_level = 1;
	            _target_other = true;
	            _town_effect = "Max_Magic_Boost";
	            _town_effect_level = 1;
	            _value = 500;
	        break;
	        case "Running_Pimento":
	            _item_icon = spr_Item_Icons;
	            _frame_number = 34;
	            _use_degrade_chance = 100;
	            _max_use_range = 1;
	            _min_use_range = -1;
	            _use_size = 1;
	            _use_target_type = "Ally";
	            _use_select_type = "Ally";
	            _use_effect = "Movement_Boost";
	            _use_effect_level = 1;
	            _target_other = true;
	            _town_effect = "Movement_Boost";
	            _town_effect_level = 1;
	            _value = 1500;
	        break;
	    }
    
	    //=============
	    //Return stats=
	    //=============
	    switch(_return_stat){
	        case "Item_Icon": return _item_icon; break;
	        case "Frame_Number": return _frame_number; break;
	        case "Item_Name": return _item_name; break;
	        case "Menu_Name": return _menu_name; break;
	        case "Main_Hand": return _main_hand; break;
	        case "Off_Hand": return _off_hand; break;
	        case "Can_Drop": return _can_drop; break;
	        case "Attack": return _attack; break;
	        case "Defense": return _defense; break;
	        case "Agility": return _agility; break;
	        case "Movement_Range": return _movement_range; break;
	        case "Movement_Type": return _movement_type; break;
	        case "Use_In_Town": return _use_in_town; break;
	        case "Target_Other": return _target_other; break;
	        case "Town_Effect": return _town_effect; break;
	        case "Town_Effect_Level": return _town_effect_level; break;
	        case "Value": return _value; break;
	        case "Shop_Type": return _shop_type; break;
	        case "Can_Sell": return _can_sell; break;
	        case "Shop_ID": return _shop_id; break;
	        case "Curse_Type": return _curse_type; break;
	        case "Turns": return _turns; break;
	        case "Max_Attack_Range": return _max_attack_range; break;
	        case "Min_Attack_Range": return _min_attack_range; break;
	        case "Attack_Target_Type": return _attack_target_type; break;
	        case "Attack_Select_Type": return _attack_select_type; break;
	        case "Attack_Size": return _attack_size; break;
	        case "Attack_Pattern": return _attack_pattern; break;
        
	        case "Accuracy": return _accuracy; break;
	        case "Evasion": return _evasion; break;
	        case "Crit": return _crit; break;
	        case "Counter": return _counter; break;
	        case "Multi_Strike": return _multi_strike; break;
        
	        case "Max_Use_Range": return _max_use_range; break;
	        case "Min_Use_Range": return _min_use_range; break;
        
	        case "Use_Degrade_Chance": return _use_degrade_chance; break;
	        case "Attack_Degrade_Chance": return _attack_degrade_chance; break;
	        case "Degrades_To": return _degrades_to; break;
	        case "Repairs_To": return _repairs_to; break;
	        case "Repair_Cost": return _repair_cost; break;
	        case "Repair_Type": return _repair_type; break;
	        case "Damaged_Message": return _damaged_message; break;
	        case "Broken_Message": return _broken_message; break;
        
	        case "Overworld_Sprite_ID": return _overworld_sprite_ID; break;
	        case "Portrait_ID": return _portrait_sprite_ID; break;
	        case "Voice_ID": return _voice_ID; break;
        
        
	        case "Use_Size": return _use_size; break;
	        case "Use_Target_Type": return _use_target_type; break;
	        case "Use_Select_Type": return _use_select_type; break;
	        case "Use_Cursor_Pattern": return _use_cursor_pattern; break;
	        case "Use_Effect": return _use_effect; break;
	        case "Use_Effect_Level": return _use_effect_level; break;
        
	        case "Battle_Cutscene_Sprite_ID": return _battle_cutscene_sprite_ID; break;
	        case "Battle_Sprite": return _battle_sprite; break;
	        case "Projectile": return _projectile; break;
        
	        case "Word_of_Power": return _word_of_power; break;
	        case "Word_of_Power_Level": return _word_of_power_level; break;
	        case "Special_Attack": return _special_attack; break;
	        case "Special_Attack_Type": return _special_attack_type; break;
	        case "Attack_Range_Type": return _attack_range_type; break;
        
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
        
	        case "Fire_Resistance": return _fire_resistance; break;
	        case "Ice_Resistance": return _ice_resistance; break;
	        case "Water_Resistance": return _water_resistance; break;
	        case "Lightning_Resistance": return _lightning_resistance; break;
	        case "Wind_Resistance": return _wind_resistance; break;
	        case "Earth_Resistance": return _earth_resistance; break;
	        case "Light_Resistance": return _light_resistance; break;
	        case "Shadow_Resistance": return _shadow_resistance; break;
	        case "Magic_Resistance": return _magic_resistance; break;
        
        
	        case "Attack_Down_Resistance": return _attack_down_resistance; break;
	        case "Attack_Down_Infliction_Chance": return _attack_down_infliction_chance; break;
	        case "Attack_Down_Infliction_Potency": return _attack_down_infliction_potency; break;
	        case "Attack_Down_Infliction_Turns_Remaining": return _attack_down_infliction_turns_remaining; break;
        
	        case "Defense_Down_Resistance": return _defense_down_resistance; break;
	        case "Defense_Down_Infliction_Chance": return _defense_down_infliction_chance; break;
	        case "Defense_Down_Infliction_Potency": return _defense_down_infliction_potency; break;
	        case "Defense_Down_Infliction_Turns_Remaining": return _defense_down_infliction_turns_remaining; break;
        
	        case "Agility_Down_Resistance": return _agility_down_resistance; break;
	        case "Agility_Down_Infliction_Chance": return _agility_down_infliction_chance; break;
	        case "Agility_Down_Infliction_Potency": return _agility_down_infliction_potency; break;
	        case "Agility_Down_Infliction_Turns_Remaining": return _agility_down_infliction_turns_remaining; break;
        
	        case "Movement_Down_Resistance": return _movement_down_resistance; break;
	        case "Movement_Down_Infliction_Chance": return _movement_down_infliction_chance; break;
	        case "Movement_Down_Infliction_Potency": return _movement_down_infliction_potency; break;
	        case "Movement_Down_Infliction_Turns_Remaining": return _movement_down_infliction_turns_remaining; break;
        
	        case "Poison_Resistance": return _poison_resistance; break;
	        case "Poison_Infliction_Chance": return _poison_infliction_chance; break;
	        case "Poison_Infliction_Potency": return _poison_infliction_potency; break;
	        case "Poison_Infliction_Turns_Remaining": return _poison_infliction_turns_remaining; break;
        
	        case "Paralysis_Resistance": return _paralysis_resistance; break;
	        case "Paralysis_Infliction_Chance": return _paralysis_infliction_chance; break;
	        case "Paralysis_Infliction_Potency": return _paralysis_infliction_potency; break;
	        case "Paralysis_Infliction_Turns_Remaining": return _paralysis_infliction_turns_remaining; break;
        
	        case "Silence_Resistance": return _silence_resistance; break;
	        case "Silence_Infliction_Chance": return _silence_infliction_chance; break;
	        case "Silence_Infliction_Potency": return _silence_infliction_potency; break;
	        case "Silence_Infliction_Turns_Remaining": return _silence_infliction_turns_remaining; break;
        
	        case "Sleep_Resistance": return _sleep_resistance; break;
	        case "Sleep_Infliction_Chance": return _sleep_infliction_chance; break;
	        case "Sleep_Infliction_Potency": return _sleep_infliction_potency; break;
	        case "Sleep_Infliction_Turns_Remaining": return _sleep_infliction_turns_remaining; break;
        
	        case "Stun_Resistance": return _stun_resistance; break;
	        case "Stun_Infliction_Chance": return _stun_infliction_chance; break;
	        case "Stun_Infliction_Potency": return _stun_infliction_potency; break;
	        case "Stun_Infliction_Turns_Remaining": return _stun_infliction_turns_remaining; break;
        
	        case "Petrify_Resistance": return _petrify_resistance; break;
	        case "Petrify_Infliction_Chance": return _petrify_infliction_chance; break;
	        case "Petrify_Infliction_Potency": return _petrify_infliction_potency; break;
	        case "Petrify_Infliction_Turns_Remaining": return _petrify_infliction_turns_remaining; break;
        
	        case "Bleed_Resistance": return _bleed_resistance; break;
	        case "Bleed_Infliction_Chance": return _bleed_infliction_chance; break;
	        case "Bleed_Infliction_Potency": return _bleed_infliction_potency; break;
	        case "Bleed_Infliction_Turns_Remaining": return _bleed_infliction_turns_remaining; break;
        
	        case "Snare_Resistance": return _snare_resistance; break;
	        case "Snare_Infliction_Chance": return _snare_infliction_chance; break;
	        case "Snare_Infliction_Potency": return _snare_infliction_potency; break;
	        case "Snare_Infliction_Turns_Remaining": return _snare_infliction_turns_remaining; break;
        
	        case "Confusion_Resistance": return _confusion_resistance; break;
	        case "Confusion_Infliction_Chance": return _confusion_infliction_chance; break;
	        case "Confusion_Infliction_Potency": return _confusion_infliction_potency; break;
	        case "Confusion_Infliction_Turns_Remaining": return _confusion_infliction_turns_remaining; break;
        
	        case "Berserk_Resistance": return _berserk_resistance; break;
	        case "Berserk_Infliction_Chance": return _berserk_infliction_chance; break;
	        case "Berserk_Infliction_Potency": return _berserk_infliction_potency; break;
	        case "Berserk_Infliction_Turns_Remaining": return _berserk_infliction_turns_remaining; break;
        
	        default: show_message("Error: Item stat not registered. " + string(_return_stat)); break;
	    }
	}





}
