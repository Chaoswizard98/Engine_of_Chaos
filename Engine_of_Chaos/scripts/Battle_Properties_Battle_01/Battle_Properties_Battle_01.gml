//==================
//Victory Conditions
//==================
function Battle_Victory_Conditions_Battle_01(){
	var _script = "none";//No victory yet
	
	//Test for victory and assign cutscene
	if((!Battle_Flag_Was_Set(2) && Defeated_All_Enemies("Player")) || Defeated_Boss()){//killed all units or boss
		_script = "Default_Battle_Victory";
	}
	
	if(Battle_Flag_Was_Set(2,"Killed_Wolf")){//If we killed the wolf
		obj_Battle_Controller.battle_flags[2] = "Round_Bypass";//bypass the second check
	}
	else if(Battle_Flag_Was_Set(2,"Round_Bypass")){
		obj_Battle_Controller.battle_flags[2] = "";//reset after the check
	}
	
	return _script;
}

//===============
//Loss Conditions
//===============
function Battle_Loss_Conditions_Battle_01(){
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
function Set_Battle_Victory_Flags_Battle_01(_trigger,_data1 = noone){
	switch(_trigger){
		case "Retreat":
			if(_data1 = room_Hillford){ global.Story_State += 1; }
		break;
		default:
			global.Story_State += 1;
		break;
	}
}