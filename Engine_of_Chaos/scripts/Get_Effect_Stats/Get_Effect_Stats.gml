function Get_Effect_Stats(){
	var _effect = argument[0];//spell effect
	var _effect_level = argument[1];//level of effect
	var _return_stat = argument[2];//stat we're looking up
	var _lookup_type = "none";//Lookup type for character stats (if provided)
	var _character = noone;//Character (if provided)
	var _container = noone;

	if(argument_count > 3){
	    _lookup_type = argument[3];
	}
	if(argument_count > 4){
	    _character = argument[4];
	}
	
	
	//=================
	//Set Up Container=
	//=================
	if(instance_exists(obj_Spell_Variable_Utility)){//if the temporary container already exists, 
		_container = obj_Spell_Variable_Utility;//set container variable
		Effect_Stats_Default(_container);//reset stats
	}
	else{//Container doesnt exist, create it
		_container = instance_create_layer(0,0,"UI_Instance_Layer",obj_Spell_Variable_Utility);
	}
	
	_container.spell_name = Get_Spell_Display_Name(_effect,"Spell_Name");
	_container.menu_name = Get_Spell_Display_Name(_effect,"Menu_Name");
	
	//================
	//Run Stat Script=
	//================
	var _script = asset_get_index("Effect_Stats_"+_effect);
	if(_script != -1){//If the asset exists
		if(script_exists(_script)){//If the asset is a script
			with(_container){
				script_execute(_script,_effect_level,_lookup_type,_character);//run the script
			}
		}
	}
	
	
	//============
	//Return Stat=
	//============
	with(_container){
		switch(_return_stat){
		    case "Spell_Icon": return spell_icon; break;
		    case "Menu_Name": return menu_name; break;
		    case "Frame_Number": return frame_number; break;
		    case "Spell_Name": return spell_name; break;
		    case "Target_Other": return target_other; break;
		    case "Town_Effect": return town_effect; break;
		    case "Magic_Cost": return magic_cost; break;
		    case "Damage_Formula": return damage_formula; break;
		    case "Min_Target_Range": return min_target_range; break;
		    case "Max_Target_Range": return max_target_range; break;
		    case "Area": return area; break;
		    case "Cursor_Pattern": return cursor_pattern; break;
		    case "Target_Type": return target_type; break;
		    case "Select_Type": return select_type; break;
		    case "Retreat_From_Battle": return retreat_from_battle; break;
		    case "Battle_Cutscene_Event": return battle_cutscene_event; break;
		    case "Summon_ID": return summon_ID; break;
		    case "End_Summon": return end_summon; break;
    
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
    
		    case "Flash_Color": return flash_color; break;
		    case "Tint_Color": return tint_color; break;
		    case "Heal_Ammount": return heal_ammount; break;
		    case "Magic_Restored": return magic_restored; break;
    
		    case "Cure_Poison": return cure_poison; break;
		    case "Cure_Stun": return cure_stun; break;
		    case "Cure_Curse": return cure_curse; break;
		    case "Cure_Paralysis": return cure_paralysis; break;
		    case "Cure_Sleep": return cure_sleep; break;
		    case "Cure_Petrify": return cure_petrify; break;
		    case "Cure_Bleed": return cure_bleed; break;
		    case "Cure_Snare": return cure_snare; break;
		    case "Cure_Confusion": return cure_confusion; break;
		    case "Cure_Berserk": return cure_berserk; break;
    
		    case "Poison_Potency": return poison_potency; break;
		    case "Poison_Turns_Remaining": return poison_turns_remaining; break;
    
		    case "Attack_Up_Potency": return attack_up_potency; break;
		    case "Attack_Up_Turns_Remaining": return attack_up_turns_remaining; break;
		    case "Defense_Up_Potency": return defense_up_potency; break;
		    case "Defense_Up_Turns_Remaining": return defense_up_turns_remaining; break;
		    case "Agility_Up_Potency": return agility_up_potency; break;
		    case "Agility_Up_Turns_Remaining": return agility_up_turns_remaining; break;
		    case "Movement_Up_Potency": return movement_up_potency; break;
		    case "Movement_Up_Turns_Remaining": return movement_up_turns_remaining; break;
    
		    case "Attack_Down_Potency": return attack_down_potency; break;
		    case "Attack_Down_Turns_Remaining": return attack_down_turns_remaining; break;
		    case "Defense_Down_Potency": return defense_down_potency; break;
		    case "Defense_Down_Turns_Remaining": return defense_down_turns_remaining; break;
		    case "Agility_Down_Potency": return agility_down_potency; break;
		    case "Agility_Down_Turns_Remaining": return agility_down_turns_remaining; break;
		    case "Movement_Down_Potency": return movement_down_potency; break;
		    case "Movement_Down_Turns_Remaining": return movement_down_turns_remaining; break;
    
		    case "Flight_Potency": return flight_potency; break;
		    case "Flight_Turns_Remaining": return flight_turns_remaining; break;
		    case "Paralysis_Potency": return paralysis_potency; break;
		    case "Paralysis_Turns_Remaining": return paralysis_turns_remaining; break;
		    case "Silence_Potency": return silence_potency; break;
		    case "Silence_Turns_Remaining": return silence_turns_remaining; break;
		    case "Sleep_Potency": return sleep_potency; break;
		    case "Sleep_Turns_Remaining": return sleep_turns_remaining; break;
		    case "Stun_Potency": return stun_potency; break;
		    case "Stun_Turns_Remaining": return stun_turns_remaining; break;
		    case "Petrify_Potency": return petrify_potency; break;
		    case "Petrify_Turns_Remaining": return petrify_turns_remaining; break;
		    case "Bleed_Potency": return bleed_potency; break;
		    case "Bleed_Turns_Remaining": return bleed_turns_remaining; break;
		    case "Magic_Immunity_Potency": return magic_immunity_potency; break;
		    case "Magic_Immunity_Turns_Remaining": return magic_immunity_turns_remaining; break;
		    case "Snare_Potency": return snare_potency; break;
		    case "Snare_Turns_Remaining": return snare_turns_remaining; break;
		    case "Confusion_Potency": return confusion_potency; break;
		    case "Confusion_Turns_Remaining": return confusion_turns_remaining; break;
		    case "Berserk_Potency": return berserk_potency; break;
		    case "Berserk_Turns_Remaining": return berserk_turns_remaining; break;
		    case "Curse_Suppression_Potency": return curse_suppression_potency; break;
		    case "Curse_Suppression_Turns_Remaining": return curse_suppression_turns_remaining; break;
    
		    default: show_message("Return stat not registered."); break;
		}
	}
}