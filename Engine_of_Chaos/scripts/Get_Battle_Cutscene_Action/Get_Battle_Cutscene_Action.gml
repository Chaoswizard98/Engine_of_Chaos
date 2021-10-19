function Get_Battle_Cutscene_Action() {
	//Figure out what action the battle cutscene is performing
	with(obj_Battle_Cutscene_Controller){
	    //===========
	    //Get Action=
	    //===========
	    switch(action){
	        //================
	        //Physical Attack=
	        //================
	        case "Attack":
	            action = "Melee_Attack";
	            if(Character_Performs_Special_Attack(attacker)){
	                Get_Special_Attack_Action(Get_Character_Special_Attack_Type("Local",attacker,"Total"));
	            }
	            else if(Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power") != "none"){//If using word of power
	                effect = Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power");
	                effect_level = Get_Equipped_Item_Stats("Local",attacker,0,"Word_of_Power_Level");
	                event = Get_Spell_Stats(effect,effect_level,"Battle_Cutscene_Event");
	                action = "Word_of_Power";
	            }
	            else if(Find_Distance(attacker.x,attacker.y,original_target.x,original_target.y)>1){//If target is further away, ranged attack
	                action = "Ranged_Attack";
	            }
	        break;
	        //==============
	        //Casting Spell=
	        //==============
	        case "Cast_Spell":
	            effect = Get_Spell("Local",attacker,inventory_slot);
	            effect_level = inventory_level;
	            event = Get_Spell_Stats(effect,effect_level,"Battle_Cutscene_Event");
	        break;
	        //===========
	        //Using Item=
	        //===========
	        case "Use_Item":
	            effect = Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Use_Effect");
	            effect_level = Get_Inventory_Item_Stats("Local",attacker,inventory_slot,"Use_Effect_Level");
	            event = Get_Spell_Stats(effect,effect_level,"Battle_Cutscene_Event");
	        break;
	    }
	    //========================
	    //Set Action Posibilities=
	    //========================
	    if(event = "Default"){
	        switch(action){
	            case "Melee_Attack":
	                allow_counter_attacks = true;
	                allow_multiple_attacks = true;
	                allow_blocking = true;
	            break;
	            case "Ranged_Attack":
	                allow_counter_attacks = true;
	                allow_multiple_attacks = true;
	                allow_blocking = true;
	                target_starts_on_screen = false;
	            break;
	            case "Cast_Spell":
	                allow_counter_attacks = false;
	                allow_multiple_attacks = false;
	                allow_blocking = false;
	            break;
	            case "Use_Item":
	                allow_counter_attacks = false;
	                allow_multiple_attacks = false;
	                allow_blocking = false;
	            break;
	            case "Word_of_Power":
	                allow_counter_attacks = false;
	                allow_multiple_attacks = true;
	                allow_blocking = false;
	            break;
	        }
	    }
	}



}
