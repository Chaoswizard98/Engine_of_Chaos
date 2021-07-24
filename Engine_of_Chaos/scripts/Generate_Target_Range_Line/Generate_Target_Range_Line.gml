function Generate_Target_Range_Line() {
	var _character = argument[0];
	var _start_x = argument[1];
	var _start_y = argument[2];
	var _target_range = argument[3];
	var _removal_range = argument[4];
	var _formula = argument[5];
	var _show_flash = argument[6];

	Generate_Target_Range_Default(_character,_start_x,_start_y,_target_range,_removal_range,"Up",_show_flash);
	Generate_Target_Range_Default(_character,_start_x,_start_y,_target_range,_removal_range,"Down",_show_flash);
	Generate_Target_Range_Default(_character,_start_x,_start_y,_target_range,_removal_range,"Left",_show_flash);
	Generate_Target_Range_Default(_character,_start_x,_start_y,_target_range,_removal_range,"Right",_show_flash);



}
