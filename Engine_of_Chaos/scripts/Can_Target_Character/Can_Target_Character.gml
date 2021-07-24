function Can_Target_Character() {
	var _target_type = argument[0];
	var _character = argument[1];
	var _target = argument[2];


	if((_target_type = "All")||(_target_type = "All_Characters")){//Target All Units
	    return true;
	}
	else if(((_target_type = "Enemy") ||(_target_type = "All_Enemies")) && Target_Is_Enemy(_character,_target)){//Target Enemies
	    return true;
	}
	else if(((_target_type = "Ally") ||(_target_type = "All_Allies")) && Target_Is_Ally(_character,_target)){//Target Allies
	    return true;
	}

	return false;



}
