function Old_Rope_Cutscene() {
	var _lookup = "Local";
	var _jason = Get_Character("AU_Jason","Default");
	var _max = Get_Character("AU_Max","Default");
	var _ciera = Get_Character("AU_Ciera","Default");
	var _kira = Get_Character("AU_Kira","Default");
	var _karina = Get_Character("AU_Karina","Default");
	
	switch(state){
	    case 0:
	        state += 1;
			Set_Story_Flag(0,2,"Played_Old_Rope_Cutscene");
			
			_jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
			
			Stop_Following_Character(_max);
			Set_Character_Location(_max,600,744,"Down",true);
			
			Stop_Following_Character(_ciera);
			Set_Character_Location(_ciera,600,744,"Down",true);
			
			Stop_Following_Character(_kira);
			Set_Character_Location(_kira,600,744,"Down",true);
			
			Stop_Following_Character(_karina);
			Set_Character_Location(_karina,600,744,"Down",true);
			
			Move_Character(_max, "Left",2,2);
	    break;
		case 1:
			state += 1;
			Move_Character(_max, "Down",1,2);
		break;
		case 2:
			state += 1;
			Move_Character(_max, "Left",1,2);
		break;
		case 3:
			state += 1;
			Face_Direction(_max, "Up");
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"01"),id,false,true);
		break;
		case 4:
			state += 1;
			Shudder(_max);
		break;
		case 5:
			state += 1;
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"02"),id,false,true);
		break;
		case 6:
			state += 1;
			Shake_Head(_max);
		break;
		case 7:
			state += 1;
			Look_At_Target(_max,_jason);
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"03"),id,false,true);
		break;
		case 8:
			state += 1;
			Move_Character(_jason, "Left",2,1);
		break;
		case 9:
			state += 1;
			Move_Character(_jason, "Down",1,1);
		break;
		case 10:
			state += 1;
			Look_At_Target(_jason,_max);
			Shudder(_jason);
		break;
		case 11:
			state += 1;
			Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"04"),id,false,true);
		break;
		case 12:
			state += 1;
			Perform_Jump(_max,2);
		break;
		case 13:
			state += 1;
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"05"),id,false,true);
		break;
		
		case 14:
			state += 1;
			Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"06"),id,false,true);
		break;
		case 15:
			state += 1;
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"07"),id,false,true);
		break;
		case 16:
			state += 1;
			Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"08"),id,false,true);
		break;
		case 17:
			state += 1;
			Move_Character(_kira, "Left",2,1);
		break;
		case 18:
			state += 1;
			Shake_Head(_kira);
		break;
		case 19:
			state += 1;
			Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"09"),id,false,true);
		break;
		case 20:
			state += 1;
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"10"),id,false,true);
		break;
		case 21:
			state += 1;
			alarm[0] = 30;
		break;
		case 22:
			state += 1;
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"11"),id,false,true);
		break;
		case 23:
			state += 1;
			Shudder(_kira);
		break;
		case 24:
			state += 1;
			Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"12"),id,false,true);
		break;
		case 25:
			state += 1;
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"13"),id,false,true);
		break;
		case 26:
			state += 1;
			Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"14"),id,false,true);
		break;
		case 27:
			state += 1;
			Shudder(_max);
		break;
		case 28:
			state += 1;
			Face_Direction(_max,"Left");
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"15"),id,false,true);
		break;
		case 29:
			state += 1;
			Shudder(_jason);
		break;
		case 30:
			state += 1;
			Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"16"),id,false,true);
		break;
		case 31:
			state += 1;
			Move_Character(_ciera, "Left",2,1);
			Move_Character(_karina, "Left",1,1,"Left",_karina.player_walking_animation_speed,false);
		break;
		case 32:
			state += 1;
			Follow_Character(_max,_jason);
			Follow_Character(_ciera,_max);
			Follow_Character(_kira,_ciera);
			Follow_Character(_karina,_kira);
			_jason.cutscene_mode = false;
			_max.cutscene_mode = false;
			_ciera.cutscene_mode = false;
			_kira.cutscene_mode = false;
			_karina.cutscene_mode = false;
			
			_jason.allow_interaction = true;
		break;
	}



}
