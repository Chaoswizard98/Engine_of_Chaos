function Spell_Stats_Default(_container){
	with(_container){
		spell_icon = spr_Blank_Inventory_Icon;//Menu Sprite
		frame_number = 0;//Frame Number of sprite
		spell_name = Get_Spell_Display_Name("Default","Spell_Name");
		menu_name = Get_Spell_Display_Name("Default","Menu_Name");
		magic_cost = 0;//MP Cost to cast the spell
		damage_formula = "Default";//"Split" (Damage is divided by # of targets), "No_Damage" (Spell doesn't deal damage)
		magic_restored = 0;//MP restored by the spell
		battle_cutscene_event = "Default";
		summon_ID = "none";
		end_summon = false;//Does the spell remove the summoned creature? (Recall Spell)

		target_type = "Enemy";//What targets can the spell choose from?
		select_type = "Enemy";//What targets does the spell hit?
		min_target_range = 0;//Minimum range of the spell
		max_target_range = 1;//Maximum range of the spell
		area = 1;//Size of spell AoE
		cursor_pattern = "Default";//Shape of the AoE

		target_other = false;//town use only
		town_effect = "none";//what effect do we perform in town?
		retreat_from_battle = false;//does this effect cause us to flee?

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

		flash_color = c_black;
		tint_color = c_white;

		heal_ammount = 0;
		cure_poison = false;
		cure_paralysis = false;
		cure_sleep = false;
		cure_petrify = false;
		cure_bleed = false;
		cure_snare = false;
		cure_confusion = false;
		cure_berserk = false;
		cure_stun = false;
		cure_curse = false;

		poison_potency = 0;
		poison_turns_remaining = 0;
		attack_up_potency = 0;
		attack_up_turns_remaining = 0;
		defense_up_potency = 0;
		defense_up_turns_remaining = 0;
		agility_up_potency = 0;
		agility_up_turns_remaining = 0;
		movement_up_potency = 0;
		movement_up_turns_remaining = 0;
		attack_down_potency = 0;
		attack_down_turns_remaining = 0;
		defense_down_potency = 0;
		defense_down_turns_remaining = 0;
		agility_down_potency = 0;
		agility_down_turns_remaining = 0;
		movement_down_potency = 0;
		movement_down_turns_remaining = 0;

		flight_potency = 0;
		flight_turns_remaining = 0;
		paralysis_potency = 0;
		paralysis_turns_remaining = 0;
		stun_potency = 0;
		stun_turns_remaining = 0;
		sleep_potency = 0;
		sleep_turns_remaining = 0;
		silence_potency = 0;
		silence_turns_remaining = 0;
		petrify_potency = 0;
		petrify_turns_remaining = 0;
		bleed_potency = 0;
		bleed_turns_remaining = 0;
		snare_potency = 0;
		snare_turns_remaining = 0;
		confusion_potency = 0;
		confusion_turns_remaining = 0;
		berserk_potency = 0;
		berserk_turns_remaining = 0;
		magic_immunity_potency = 0;
		magic_immunity_turns_remaining = 0;
		curse_suppression_potency = 0;
		curse_suppression_turns_remaining = 0;
	}
}

//=====================
//Animation Start Event
//=====================
function Spell_Animation_Create_Event_Default(_object){
	with(_object){ 
		event_perform(ev_other,ev_user0);
	}
}


//====================
//Animation Loop Event
//====================
function Spell_Animation_Loop_Event_Default(_object){
		//show_message("ping");
}

//===================
//Animation Hit Event
//===================
function Spell_Animation_Hit_Event_Default(_object){
	with(_object){ 
		event_perform(ev_other,ev_user0); 
	}
}

//=======================
//Town Effect Start State
//=======================
function Town_Spell_Effect_State_Start_Default(_object){
	with(_object){
		state = "Run_Effect";
		switch(action){
			case "Use_Item": Create_Dialogue(noone,Get_Generic_Voice("Use_Item"), Get_Character_Name(lookup_type,target,"Total") + " uses the " + Get_Item_Stats(item,"Item_Name",lookup_type,character) + ".",id,true,true); break;
			case "Cast_Spell": Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"), Get_Character_Name(lookup_type,character,"Total") + " casts " + string(spell) + " level " + string(spell_level) + ".",id,true,true); break;
			default: event_perform(ev_other,ev_user0); break;
		}
	}
}

//=====================
//Town Effect Run State
//=====================
function Town_Spell_Effect_State_Run_Effect_Default(_object){
	with(_object){
		state = "End";
		switch(action){
			case "Use_Item": Create_Dialogue(noone,Get_Generic_Voice("Use_Item"),"But nothing happens.",id,true,true); break;
			case "Cast_Spell": Create_Dialogue(noone,Get_Generic_Voice("Cast_Spell"),"But nothing happens.",id,true,true); break;
			default: event_perform(ev_other,ev_user0); break;
		}
	}
}

//=====================
//Town Effect End State
//=====================
function Town_Spell_Effect_State_End_Default(_object){
	with(_object){
		state = "none";
		with(current_object){
	        event_perform(ev_other,ev_user0);
	    }
	    instance_destroy();//destroy self.
	}
}