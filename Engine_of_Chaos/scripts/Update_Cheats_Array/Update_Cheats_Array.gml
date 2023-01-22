function Update_Cheats_Array() {
	settings_array[0] = "Disabled";
	settings_array[1] = "Disabled";
	settings_array[2] = "Disabled";
	settings_array[3] = "Disabled";
	settings_array[4] = "Disabled";
	settings_array[5] = "Disabled";
	settings_array[6] = "Disabled";

	if(global.Control_All_Units){settings_array[0] = "Enabled";}
	if(global.Unlimited_Gold){settings_array[1] = "Enabled";}
	if(global.Buy_All_Items){settings_array[2] = "Enabled";}
	if(global.Invincibility){settings_array[3] = "Enabled";}
	if(global.Infinite_Magic){settings_array[4] = "Enabled";}
	if(global.Infinite_Item_Use){settings_array[5] = "Enabled";}
	if(global.Infinite_Movement){settings_array[6] = "Enabled";}
}