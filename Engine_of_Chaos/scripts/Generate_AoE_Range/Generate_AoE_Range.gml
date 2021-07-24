function Generate_AoE_Range() {
	var _character = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _target_range = (argument[3] - 1);
	var _removal_range = argument[4];
	var _formula = argument[5];

	switch(_formula){
	    case "Prism_Flower": Generate_AoE_Range_Prism_Flower(_character,_start_x,_start_y,_target_range,_removal_range,_formula); break;
	    case "Burst_Rock": Generate_AoE_Range_Burst_Rock(_character,_start_x,_start_y,_target_range,_removal_range,_formula); break;
	    default: Generate_AoE_Range_Default(_character,_start_x,_start_y,_target_range,_removal_range,_formula); break;
	}



}
