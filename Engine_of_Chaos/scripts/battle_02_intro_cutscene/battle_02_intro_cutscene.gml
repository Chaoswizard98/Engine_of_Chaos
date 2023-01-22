function Battle_02_Intro_Cutscene() {
	var _lookup = "Local";
	var _jason = Get_Character("AU_Jason","Default");
	var _max = Get_Character("AU_Max","Default");
	var _ciera = Get_Character("AU_Ciera","Default");
	var _kira = Get_Character("AU_Kira","Default");
	var _karina = Get_Character("AU_Karina","Default");
	var _wisp1;
	var _wisp2;
	var _wisp3;
	var _wisp4;
	with(obj_Character){
	    if(ai_script_ID = "Wisp1"){ _wisp1 = id; }
		if(ai_script_ID = "Wisp2"){ _wisp2 = id; }
		if(ai_script_ID = "Wisp3"){ _wisp3 = id; }
		if(ai_script_ID = "Wisp4"){ _wisp4 = id; }
	}
	
	var _arrow = noone;
	with(obj_Overworld_Projectile){
		if(sub_id = "Arrow"){
			_arrow = id;
		}
	}

	switch(state){
	    case 0:
	        state += 1;
			global.Story_State += 1;
			with(obj_Character){
				instance_destroy();
			}
			var _jason = Spawn_Player("AU_Jason","Hillford_Mines");//default character, default spawn location (Overwritten by room transition controller if it exists)
			
			_jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
	        _jason.x = 192;
			_jason.y = 240;
			
			_max = Create_NPC(168,192,"Down","AU_Max",true);
			_ciera = Create_NPC(192,216,"Down","AU_Ciera",true);
			_kira = Create_NPC(168,240,"Left","AU_Kira",true);
			_karina = Create_NPC(144,216,"Left","AU_Karina",true);
			_wisp1 = Create_NPC(288,144,"Down","AU_Wisp",true);
			_wisp2 = Create_NPC(72,216,"Down","AU_Wisp",true);
			_wisp3 = Create_NPC(240,240,"Down","AU_Wisp",true);
			_wisp4 = Create_NPC(144,120,"Down","AU_Wisp",true);
			
			_wisp1.ai_script_ID = "Wisp1";
			_wisp2.ai_script_ID = "Wisp2";
			_wisp3.ai_script_ID = "Wisp3";
			_wisp4.ai_script_ID = "Wisp4";
			
			Start_Room(_jason);
	        Finish_Room_Transition(id);
	    break;
		
		case 1:
			state += 1;
			alarm[0] = 60;
		break;
		
		case 2:
			state += 1;
			//alarm[0] = 2;
			Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"01"),id,false,true);
		break;
		case 3:
			state += 1;
			//Room_Transfer(_jason.character_ID,"Force",room_Battle_02,"Hillford_Mines");
			Create_Character_Dialogue("Local",_ciera,Get_Cutscene_Messages(id,"02"),id,false,true);
			//Move_Character(_max,"Right",1,1);
		break;
		case 4:
			state += 1;
			Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"03"),id,false,true);
		break;
		case 5:
			state += 1;
			Move_Character(_max,"Right",1,1);
			
		break;
		case 6:
			state += 1;
			Move_Character(_max,"Up",2,1);
		break;
		case 7:
			state += 1;
			Move_Character(_max,"Right",1,1);
		break;
		case 8:
			state += 1;
			alarm[0] = 60;
		break;
		case 9:
			state += 1;
			Sprite_Animation(_max,spr_AU_Max_ARCR_Overworld_Shoot_Right,1,0,true,true);
			//_max.image_speed = 0;
			//_max.image_index = 0;
			//_max.sprite_index = spr_AU_Max_ARCR_Overworld_Shoot_Right;
			alarm[0] = 60;
		break;
		case 10:
			state += 1;
			_max.animation_frame = 1;
			_arrow = Create_Overworld_Projectile(_max.x+3,_max.y-2,spr_AU_Arrow_Overworld,0,0);
			_arrow.sub_id = "Arrow";
			Move_Overworld_Projectile(_arrow,_wisp1.x,_wisp1.y,6);
			Play_Sound(sfx_Blast);
		break;
		case 11:
			state += 1;
			Move_Character(_wisp1,"Right",1,6);
			Play_Sound(sfx_Hit);
			instance_destroy(_arrow);
		break;
		case 12:
			state += 1;
			Play_Death_Animation(_wisp1);
		break;
		case 13:
			state += 1;
			alarm[0] = 10;
		break;
		
		case 14:
			state += 1;
			Play_Music(bgm_Random_Battle,"Fade_To_Next",120,0);
			Enable_Spell_Cast_Flash(_wisp2,3,c_black,c_teal);
			Play_Sound(sfx_Spell_Cast);
			alarm[0] = 60;
		break;
		
		case 15:
			state += 1;
			Enable_Spell_Cast_Flash(_wisp3,3,c_black,c_teal);
			Play_Sound(sfx_Spell_Cast);
			alarm[0] = 20;
		break;
		
		case 16:
			state += 1;
			Enable_Spell_Cast_Flash(_wisp4,3,c_black,c_teal);
			Play_Sound(sfx_Spell_Cast);
			alarm[0] = 20;
		break;
		
		case 17:
			state += 1;
			Reset_Sprite_Animation(_max);
			Face_Direction(_max, "Down");
			Perform_Jump(_max,2);
		break;
		case 18:
			state += 1;
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"04"),id,false,true);
		break;
		
		case 19:
			state += 1;
			Shudder(_jason);
		break;
		
		case 20:
			state += 1;
			Look_At_Target(_kira,_max);
			Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"05"),id,false,true);
		break;
		
		case 21:
			state += 1;
			Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"06"),id,false,true);
		break;
		
		case 22:
			state += 1;
			Look_At_Target(_jason,_max);
			Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"07"),id,false,true);
		break;
		
		case 23:
			state += 1;
			Room_Transfer(_jason.character_ID,"Force",room_Battle_02,"Hillford_Mines");
		break;
	}



}
