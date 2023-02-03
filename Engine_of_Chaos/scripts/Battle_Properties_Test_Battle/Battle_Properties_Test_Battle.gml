//==================
//Victory Conditions
//==================
function Battle_Victory_Conditions_Test_Battle(){
	var _script = "none";//No victory yet
	
	//Test for victory and assign cutscene
	if(Defeated_All_Enemies("Player")){//killed all units or boss
		_script = "Default_Battle_Victory";
	}
	
	return _script;
}

//===============
//Loss Conditions
//===============
function Battle_Loss_Conditions_Test_Battle(){
	var _script = "none";//No loss yet
	
	//Test for loss and asign cutscene
	if(Player_Was_Defeated()){//player was defeated
		_script = "Default_Battle_Defeat";
	}
	
	return _script;
}

//=================
//Set Victory Flags
//=================
function Set_Battle_Victory_Flags_Test_Battle(_trigger,_data1 = noone){
	switch(_trigger){
		default: break;
	}
}