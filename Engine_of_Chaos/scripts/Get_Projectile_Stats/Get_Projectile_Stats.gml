function Get_Projectile_Stats() {
	var _projectile = argument[0];
	var _return_stat = argument[1];

	//==============
	//Default Stats=
	//==============

	var _sprite = spr_Battered_Arrow;
	var _animation_speed = 0;
	var _movement_speed = 15;
	var _end_effect = "none";


	switch(_projectile){
	    case "Battered_Arrow":
	        _sprite = spr_Battered_Arrow;
	        //_end_effect = 'Blaze_Level_2';
	    break;
	}

	//=============
	//Return Stats=
	//=============
	if(_return_stat = "Object"){
	    switch(_projectile){
	        default: return instance_create_layer(0,0,"Battle_Cutscene_Instance_Layer",obj_Projectile); break;
	    }
	}
	else{
	    switch(_return_stat){
	        case "Sprite": return _sprite break;
	        case "Animation_Speed": return _animation_speed break;
	        case "Movement_Speed": return _movement_speed break;
	        case "End_Effect": return _end_effect break;
	    }
	}



}
