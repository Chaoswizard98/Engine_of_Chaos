function Get_Item_Stats(_item,_stat,_lookup_type = "none", _character = noone) {
	var _container = noone;
	
	//=================
	//Set Up Container=
	//=================
	if(instance_exists(obj_Item_Variable_Utility)){//if the temporary container already exists, 
		_container = obj_Item_Variable_Utility;//set container variable
		Item_Stats_Default(_container);//reset stats
	}
	else{//Container doesnt exist, create it
		_container = instance_create_layer(0,0,"UI_Instance_Layer",obj_Item_Variable_Utility);
	}
	
	//Get display name based on language files
	_container.item_name = Get_Item_Display_Name(_item,"Item_Name");//name of item (for dialogue)
	_container.menu_name = Get_Item_Display_Name(_item,"Menu_Name");//name as it appears in menus
	
	
	//================
	//Run Stat Script=
	//================
	var _script = asset_get_index("Item_Stats_"+_item);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			with(_container){
				script_execute(_script,_lookup_type,_character);//run the script
			}
		}
	}
    
	//=============
	//Return stats=
	//=============
	with(_container){
	    switch(_stat){
	        case "Item_Icon": return item_icon; break;
	        case "Frame_Number": return frame_number; break;
	        case "Item_Name": return item_name; break;
	        case "Menu_Name": return menu_name; break;
	        case "Main_Hand": return main_hand; break;
	        case "Off_Hand": return off_hand; break;
	        case "Can_Drop": return can_drop; break;
	        case "Attack": return attack; break;
	        case "Defense": return defense; break;
	        case "Agility": return agility; break;
	        case "Movement_Range": return movement_range; break;
	        case "Movement_Type": return movement_type; break;
	        case "Target_Other": return target_other; break;
	        case "Town_Effect": return town_effect; break;
	        case "Town_Effect_Level": return town_effect_level; break;
	        case "Value": return value; break;
	        case "Shop_Type": return shop_type; break;
	        case "Can_Sell": return can_sell; break;
	        case "Shop_ID": return shop_id; break;
	        case "Curse_Type": return curse_type; break;
	        case "Turns": return turns; break;
	        case "Max_Attack_Range": return max_attack_range; break;
	        case "Min_Attack_Range": return min_attack_range; break;
	        case "Attack_Target_Type": return attack_target_type; break;
	        case "Attack_Select_Type": return attack_select_type; break;
	        case "Attack_Size": return attack_size; break;
	        case "Attack_Pattern": return attack_pattern; break;
        
	        case "Accuracy": return accuracy; break;
	        case "Evasion": return evasion; break;
	        case "Crit": return crit; break;
	        case "Counter": return counter; break;
	        case "Multi_Strike": return multi_strike; break;
        
	        case "Max_Use_Range": return max_use_range; break;
	        case "Min_Use_Range": return min_use_range; break;
        
	        case "Use_Degrade_Chance": return use_degrade_chance; break;
	        case "Attack_Degrade_Chance": return attack_degrade_chance; break;
	        case "Degrades_To": return degrades_to; break;
	        case "Repairs_To": return repairs_to; break;
	        case "Repair_Cost": return repair_cost; break;
	        case "Repair_Type": return repair_type; break;
	        case "Damaged_Message": return damaged_message; break;
	        case "Broken_Message": return broken_message; break;
        
	        case "Overworld_Sprite_ID": return overworld_sprite_ID; break;
	        case "Portrait_ID": return portrait_sprite_ID; break;
	        case "Voice_ID": return voice_ID; break;
        
	        case "Use_Size": return use_size; break;
	        case "Use_Target_Type": return use_target_type; break;
	        case "Use_Select_Type": return use_select_type; break;
	        case "Use_Cursor_Pattern": return use_cursor_pattern; break;
	        case "Use_Effect": return use_effect; break;
	        case "Use_Effect_Level": return use_effect_level; break;
        
	        case "Battle_Cutscene_Sprite_ID": return battle_cutscene_sprite_ID; break;
	        case "Battle_Sprite": return battle_sprite; break;
	        case "Projectile": return projectile; break;
        
	        case "Word_of_Power": return word_of_power; break;
	        case "Word_of_Power_Level": return word_of_power_level; break;
	        case "Special_Attack": return special_attack; break;
	        case "Special_Attack_Type": return special_attack_type; break;
	        case "Attack_Range_Type": return attack_range_type; break;
        
	        case "Fire_Damage": return fire_damage; break;
	        case "Ice_Damage": return ice_damage; break;
	        case "Water_Damage": return water_damage; break;
	        case "Lightning_Damage": return lightning_damage; break;
	        case "Wind_Damage": return wind_damage; break;
	        case "Earth_Damage": return earth_damage; break;
	        case "Light_Damage": return light_damage; break;
	        case "Shadow_Damage": return shadow_damage; break;
	        case "Magic_Damage": return magic_damage; break;
	        case "Void_Damage": return void_damage; break;
        
	        case "Fire_Resistance": return fire_resistance; break;
	        case "Ice_Resistance": return ice_resistance; break;
	        case "Water_Resistance": return water_resistance; break;
	        case "Lightning_Resistance": return lightning_resistance; break;
	        case "Wind_Resistance": return wind_resistance; break;
	        case "Earth_Resistance": return earth_resistance; break;
	        case "Light_Resistance": return light_resistance; break;
	        case "Shadow_Resistance": return shadow_resistance; break;
	        case "Magic_Resistance": return magic_resistance; break;
        
	        case "Attack_Down_Resistance": return attack_down_resistance; break;
	        case "Attack_Down_Infliction_Chance": return attack_down_infliction_chance; break;
	        case "Attack_Down_Infliction_Potency": return attack_down_infliction_potency; break;
	        case "Attack_Down_Infliction_Turns_Remaining": return attack_down_infliction_turns_remaining; break;
        
	        case "Defense_Down_Resistance": return defense_down_resistance; break;
	        case "Defense_Down_Infliction_Chance": return defense_down_infliction_chance; break;
	        case "Defense_Down_Infliction_Potency": return defense_down_infliction_potency; break;
	        case "Defense_Down_Infliction_Turns_Remaining": return defense_down_infliction_turns_remaining; break;
        
	        case "Agility_Down_Resistance": return agility_down_resistance; break;
	        case "Agility_Down_Infliction_Chance": return agility_down_infliction_chance; break;
	        case "Agility_Down_Infliction_Potency": return agility_down_infliction_potency; break;
	        case "Agility_Down_Infliction_Turns_Remaining": return agility_down_infliction_turns_remaining; break;
        
	        case "Movement_Down_Resistance": return movement_down_resistance; break;
	        case "Movement_Down_Infliction_Chance": return movement_down_infliction_chance; break;
	        case "Movement_Down_Infliction_Potency": return movement_down_infliction_potency; break;
	        case "Movement_Down_Infliction_Turns_Remaining": return movement_down_infliction_turns_remaining; break;
        
	        case "Poison_Resistance": return poison_resistance; break;
	        case "Poison_Infliction_Chance": return poison_infliction_chance; break;
	        case "Poison_Infliction_Potency": return poison_infliction_potency; break;
	        case "Poison_Infliction_Turns_Remaining": return poison_infliction_turns_remaining; break;
        
	        case "Paralysis_Resistance": return paralysis_resistance; break;
	        case "Paralysis_Infliction_Chance": return paralysis_infliction_chance; break;
	        case "Paralysis_Infliction_Potency": return paralysis_infliction_potency; break;
	        case "Paralysis_Infliction_Turns_Remaining": return paralysis_infliction_turns_remaining; break;
        
	        case "Silence_Resistance": return silence_resistance; break;
	        case "Silence_Infliction_Chance": return silence_infliction_chance; break;
	        case "Silence_Infliction_Potency": return silence_infliction_potency; break;
	        case "Silence_Infliction_Turns_Remaining": return silence_infliction_turns_remaining; break;
        
	        case "Sleep_Resistance": return sleep_resistance; break;
	        case "Sleep_Infliction_Chance": return sleep_infliction_chance; break;
	        case "Sleep_Infliction_Potency": return sleep_infliction_potency; break;
	        case "Sleep_Infliction_Turns_Remaining": return sleep_infliction_turns_remaining; break;
        
	        case "Stun_Resistance": return stun_resistance; break;
	        case "Stun_Infliction_Chance": return stun_infliction_chance; break;
	        case "Stun_Infliction_Potency": return stun_infliction_potency; break;
	        case "Stun_Infliction_Turns_Remaining": return stun_infliction_turns_remaining; break;
        
	        case "Petrify_Resistance": return petrify_resistance; break;
	        case "Petrify_Infliction_Chance": return petrify_infliction_chance; break;
	        case "Petrify_Infliction_Potency": return petrify_infliction_potency; break;
	        case "Petrify_Infliction_Turns_Remaining": return petrify_infliction_turns_remaining; break;
        
	        case "Bleed_Resistance": return bleed_resistance; break;
	        case "Bleed_Infliction_Chance": return bleed_infliction_chance; break;
	        case "Bleed_Infliction_Potency": return bleed_infliction_potency; break;
	        case "Bleed_Infliction_Turns_Remaining": return bleed_infliction_turns_remaining; break;
        
	        case "Snare_Resistance": return snare_resistance; break;
	        case "Snare_Infliction_Chance": return snare_infliction_chance; break;
	        case "Snare_Infliction_Potency": return snare_infliction_potency; break;
	        case "Snare_Infliction_Turns_Remaining": return snare_infliction_turns_remaining; break;
        
	        case "Confusion_Resistance": return confusion_resistance; break;
	        case "Confusion_Infliction_Chance": return confusion_infliction_chance; break;
	        case "Confusion_Infliction_Potency": return confusion_infliction_potency; break;
	        case "Confusion_Infliction_Turns_Remaining": return confusion_infliction_turns_remaining; break;
        
	        case "Berserk_Resistance": return berserk_resistance; break;
	        case "Berserk_Infliction_Chance": return berserk_infliction_chance; break;
	        case "Berserk_Infliction_Potency": return berserk_infliction_potency; break;
	        case "Berserk_Infliction_Turns_Remaining": return berserk_infliction_turns_remaining; break;
        
	        default: show_message("Error: Item stat not registered. " + string(_return_stat)); break;
	    }
	}
}
