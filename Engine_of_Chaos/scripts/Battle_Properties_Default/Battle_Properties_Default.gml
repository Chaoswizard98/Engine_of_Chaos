//==================
//Victory Conditions
//==================
function Battle_Victory_Conditions_Default(){
	var _script = "none";//No victory yet
	
	//Test for victory and assign cutscene
	if(Defeated_All_Enemies("Player") || Defeated_Boss()){//killed all units or boss
		_script = "Default_Battle_Victory";
	}
	
	return _script;
}

//===============
//Loss Conditions
//===============
function Battle_Loss_Conditions_Default(){
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
function Set_Battle_Victory_Flags_Default(_trigger,_data1 = noone){
	switch(_trigger){
		case "Retreat":
			if(_data1 = room_next(room)){ global.Story_State += 1; }//If we retreat to next room, set victory
		break;
		default:
			global.Story_State += 1; //Not retreating, killed all units
		break;
	}
}