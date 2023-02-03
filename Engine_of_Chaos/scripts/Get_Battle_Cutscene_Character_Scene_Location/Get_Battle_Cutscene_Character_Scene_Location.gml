function Get_Battle_Cutscene_Character_Scene_Location() {
	var _character = argument[0];
	var _return_stat = argument[1];
	var _pan = argument[2];

	var _x_pos;
	var _y_pos;
	var _mirror = 1;

	if(_character.location = "Foreground"){//Foreground
	    if(_character.position = "Right"){
	        _x_pos = obj_Battle_Cutscene_Controller.foreground_right_x + _pan;
	        _y_pos = obj_Battle_Cutscene_Controller.foreground_right_y;
	    }
	    else{
	        _mirror = -1;
	        _x_pos = obj_Battle_Cutscene_Controller.foreground_left_x - _pan;
	        _y_pos = obj_Battle_Cutscene_Controller.foreground_left_y;
	    }
	}
	else{//Background
	    if(_character.position = "Left"){
	        _x_pos = obj_Battle_Cutscene_Controller.background_left_x - _pan;
	        _y_pos = obj_Battle_Cutscene_Controller.background_left_y;
	    }
	    else{
	        _mirror = -1;
	        _x_pos = obj_Battle_Cutscene_Controller.background_right_x + _pan;
	        _y_pos = obj_Battle_Cutscene_Controller.background_right_y;
	    }
	}


	switch(_return_stat){
	    case "X_Pos": return _x_pos - obj_Battle_Cutscene_Controller.scene_x; break;
	    case "Y_Pos": return _y_pos- obj_Battle_Cutscene_Controller.scene_y; break;
	    case "Mirror": return _mirror; break;
	}



}
