function Update_Game_Settings_Array() {
	settings_array[0] = "";
	settings_array[1] = global.Dialogue_Speed;
	if(global.Perma_Death){
	    settings_array[2] = "Enabled";
	}
	else{
	    settings_array[2] = "Disabled";
	}
	//settings_array[3] = global.Difficulty;
	settings_array[3] = round(global.Sound_Volume*100);
	settings_array[4] = round(global.Music_Volume*100);



}
