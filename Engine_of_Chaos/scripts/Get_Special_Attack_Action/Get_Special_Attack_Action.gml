function Get_Special_Attack_Action() {
	var _special = argument[0];

	switch(_special){
	    case "Prism_Flower":
	        action = "Ranged_Attack";
	        event = "Prism_Flower";
	        allow_counter_attacks = false;
	        allow_multiple_attacks = false;
	        allow_blocking = false;
	        target_starts_on_screen = false;
	    break;
	    case "Burst_Rock":
	        action = "Word_of_Power";
	        event = "Burst_Rock";
	        allow_counter_attacks = false;
	        allow_multiple_attacks = false;
	        allow_blocking = false;
	        target_starts_on_screen = false;
	        effect = "Burst_Rock_Explosion";
	        effect_level = 1;
	    break;
	}



}
