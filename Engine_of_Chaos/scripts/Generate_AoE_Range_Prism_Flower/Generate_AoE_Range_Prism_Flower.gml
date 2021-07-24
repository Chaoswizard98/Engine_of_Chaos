function Generate_AoE_Range_Prism_Flower() {
	var _character = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _target_range = argument[3];
	var _removal_range = argument[4];
	var _formula = argument[5];

	Generate_AoE_Range_Default(_character,_character.x,_character.y,_target_range,0,Get_Direction(_character.x,_character.y,_start_x,_start_y));



}
