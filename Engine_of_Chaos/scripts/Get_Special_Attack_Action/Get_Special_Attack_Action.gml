function Get_Special_Attack_Action() {
	var _special = argument[0];

	switch(_special){
	    case "SF2_Prism_Flower":
	        action = "Ranged_Attack";
	        event = "SF2_Prism_Flower";
	        allow_counter_attacks = false;
	        allow_multiple_attacks = false;
	        allow_blocking = false;
	        target_starts_on_screen = false;
	    break;
	    case "SF2_Burst_Rock":
	        action = "Word_of_Power";
	        event = "SF2_Burst_Rock";
	        allow_counter_attacks = false;
	        allow_multiple_attacks = false;
	        allow_blocking = false;
	        target_starts_on_screen = false;
	        effect = "SF2_Burst_Rock";
	        effect_level = 1;
	    break;
	}



}
