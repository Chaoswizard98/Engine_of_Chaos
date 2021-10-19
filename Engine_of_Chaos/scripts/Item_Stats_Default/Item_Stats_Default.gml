function Item_Stats_Default(_container){
	with(_container){
		item_icon = spr_Blank_Inventory_Icon;//inventory sprite
		frame_number = 0;//frame number
		item_name = Get_Item_Display_Name("Default","Item_Name");//name of item (for dialogue)
		menu_name = Get_Item_Display_Name("Default","Menu_Name");//name as it appears in menus
		main_hand = false;//can we equip it?
		off_hand = false;//can we equip it?
		can_drop = "true";//can we drop / sell it?
		curse_type = "none";//is this item cursed? what effect does it have?
		//equipment stats
		attack = 0;
		defense = 0;
		agility = 0;
		movement_range = 0;
		movement_type = "none";
		turns = 0;//bonus turns in battle
		attack_target_type = "none";
		attack_select_type = "none";
		max_attack_range = 0;
		min_attack_range = 0;
		attack_size = 0;
		attack_pattern = "none";
		//effect variables
		target_other = false;
		town_effect = "none";
		max_use_range = 0;
		min_use_range = 0;
		use_size = 0;
		use_target_type = "Enemy";
		use_select_type = "none";
		use_cursor_pattern = "none";
		use_effect = "none";
		use_effect_level = 1;
		//Costume Variables
		overworld_sprite_ID = noone;
		portrait_sprite_ID = noone;
		voice_ID = noone;
		//Shop Variables
		value = 0;//base cost of the item
		can_sell = true;//can we sell this item?
		shop_id = -1;//do we sell to deals / other quantity shops? -1 for no, 0 for deals, etc
		shop_type = "Item";//For shop use, can be 'Item' or 'Weapon'. Changes member list display.  
		//Degradable Items
		use_degrade_chance = 0;//chance to degrade on item use
		attack_degrade_chance = 0;//chance to degrade when attacking
		degrades_to = "none";//item this turns into when damaged
		repairs_to = "none";//item this turns into when repaired
		repair_cost = 0;//cost to repair this item.
		repair_type = "Default";//which shops can repair this item?
		accuracy = 0;
		evasion = 0;
		crit = 0;
		counter = 0;
		multi_strike = 0;
		special_attack = 0;
		special_attack_type = "none";

		battle_cutscene_sprite_ID = "none";
		battle_sprite = spr_Blank_Sprite;
		projectile = "none";

		word_of_power = "none";
		word_of_power_level = 1;

		damaged_message = "";//"Item_Damaged" Identifiers for language files. Can also be custom, just make sure to add it to the language files
		broken_message = "";//"Item_Broke"
		attack_range_type = "none";

		fire_damage = 0;
		ice_damage = 0;
		water_damage = 0;
		lightning_damage = 0;
		wind_damage = 0;
		earth_damage = 0;
		light_damage = 0;
		shadow_damage = 0;
		magic_damage = 0;
		void_damage = 0;

		fire_resistance = 0;
		ice_resistance = 0;
		water_resistance = 0;
		lightning_resistance = 0;
		wind_resistance = 0;
		earth_resistance = 0;
		light_resistance = 0;
		shadow_resistance = 0;
		magic_resistance = 0;

		attack_down_resistance = 0;
		attack_down_infliction_chance = 0;
		attack_down_infliction_potency = 0;
		attack_down_infliction_turns_remaining = 0;

		defense_down_resistance = 0;
		defense_down_infliction_chance = 0;
		defense_down_infliction_potency = 0;
		defense_down_infliction_turns_remaining = 0;

		agility_down_resistance = 0;
		agility_down_infliction_chance = 0;
		agility_down_infliction_potency = 0;
		agility_down_infliction_turns_remaining = 0;

		movement_down_resistance = 0;
		movement_down_infliction_chance = 0;
		movement_down_infliction_potency = 0;
		movement_down_infliction_turns_remaining = 0;

		poison_resistance = 0;
		poison_infliction_chance = 0;
		poison_infliction_potency = 0;
		poison_infliction_turns_remaining = 0;

		paralysis_resistance = 0;
		paralysis_infliction_chance = 0;
		paralysis_infliction_potency = 0;
		paralysis_infliction_turns_remaining = 0;

		silence_resistance = 0;
		silence_infliction_chance = 0;
		silence_infliction_potency = 0;
		silence_infliction_turns_remaining = 0;

		sleep_resistance = 0;
		sleep_infliction_chance = 0;
		sleep_infliction_potency = 0;
		sleep_infliction_turns_remaining = 0;

		stun_resistance = 0;
		stun_infliction_chance = 0;
		stun_infliction_potency = 0;
		stun_infliction_turns_remaining = 0;

		petrify_resistance = 0;
		petrify_infliction_chance = 0;
		petrify_infliction_potency = 0;
		petrify_infliction_turns_remaining = 0;

		bleed_resistance = 0;
		bleed_infliction_chance = 0;
		bleed_infliction_potency = 0;
		bleed_infliction_turns_remaining = 0;

		snare_resistance = 0;
		snare_infliction_chance = 0;
		snare_infliction_potency = 0;
		snare_infliction_turns_remaining = 0;

		confusion_resistance = 0;
		confusion_infliction_chance = 0;
		confusion_infliction_potency = 0;
		confusion_infliction_turns_remaining = 0;

		berserk_resistance = 0;
		berserk_infliction_chance = 0;
		berserk_infliction_potency = 0;
		berserk_infliction_turns_remaining = 0;
	}
}