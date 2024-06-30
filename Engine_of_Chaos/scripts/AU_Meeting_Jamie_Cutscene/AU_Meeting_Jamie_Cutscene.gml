function AU_Meeting_Jamie_Cutscene(){
	var _jason = player_trigger;
	var _max = Get_Character("AU_Max");
	var _jamie = Get_Character("AU_Jamie");

	switch(state){
		case 0:
	        state += 1;
	        _jason.allow_interaction = false;
	        _jason.cutscene_mode = true;
			_jamie.cutscene_mode = true;
			Move_Character(_jason,"Left",6,1);
	    break;
		case 1:
			state += 1;
			
		break;
		
		//case 1:
		//	state += 1; 
		//	_jason.cutscene_mode = false;
		//	_jason.allow_interaction = true;
		//	global.Story_State += 1;
		//	instance_destroy();
		//break;
		
		
		
		
		
		
		
	    //case 1:
	    //    state += 1;
		//	Move_Character(_jason,"Right",5,1);//character,direction,tiles,speed
		//	_jason.custom_move_script = "Character_Movement_Jason_Hillford_Inn_Cutscene";
			
			
		//	_max.cutscene_mode = true;
	    //    Stop_Following_Character(_max);
			
		//	_ciera.cutscene_mode = true;
		//	Stop_Following_Character(_ciera);
		//	_ciera.custom_move_script = "Character_Movement_Ciera_Hillford_Inn_Cutscene";
			
	    //break;
		//case 2:
	    //    state += 1;
		//	Move_Character(_max,"Right",5,6);//character,direction,tiles,speed
	    //break;
		
		//case 3:
		//	state += 1;
		//	Move_Character(_max,"Up",2,6);
		//break;
		
		//case 4:
		//	state += 1;
		//	Shudder(_max);
		//break;
		
		//case 5:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"01"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 6:
		//	state += 1;
		//	_bartender.cutscene_mode = true;
		//	Nod_Head(_bartender);
		//break;
		
		//case 7:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_bartender,Get_Cutscene_Messages(id,"02"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 8:
		//	state += 1;
		//	Move_Character(_bartender,"Right",1,1);
		//break;
		
		//case 9:
		//	state += 1;
		//	Face_Direction(_bartender,"Up");
		//	alarm[0] = 30;
		//break;
		
		//case 10:
		//	state += 1;
		//	Nod_Head(_bartender);
		//break;
		
		//case 11:
		//	state +=1;
		//	alarm[0] = 30;
		//break;
		
		//case 12:
		//	state += 1;
		//	Move_Character(_bartender,"Left",1,1);	
		//break;
		
		//case 13:
		//	state += 1;
		//	Face_Direction(_bartender,"Down");
		//	Create_Character_Dialogue("Local",_bartender,Get_Cutscene_Messages(id,"03"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 14:
			
		//	if(Can_Afford_Cost(20)){
		//		state = 20;
		//		Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"04"),id,true,true);
		//	}
		//	else{
		//		state += 1;
		//		Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"05"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	}
		//break;
		
		//case 15:
		//	state += 1;
		//	Shake_Head(_bartender);
		//break;
		
		//case 16:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_bartender,Get_Cutscene_Messages(id,"06"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 17:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"09"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 20:
		//	state += 2;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"07"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		////case 21:
		////	state += 1;
		////	Face_Direction(_max,"Down");
		////	Shudder(_max);
		////break;
		
		//case 22:
		//	state += 1;
		//	Face_Direction(_max,"Down");
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"08"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 23:
		//	state += 1;
		//	Shudder(_max);
		//break;
		
		//case 24:
		//	//state += 1;
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"10"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	if((Get_Character_Kills("Global",0,"Total") = 0)&&(Get_Character_Kills("Global",1,"Total") = 0)&&(Get_Character_Kills("Global",2,"Total") = 0)){//If no one killed anything yet
		//		state += 1;
		//	}
		//	else{
		//		state = 30;	
		//	}
		//break;
		
		//case 25:
		//	state = 30;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"11"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 30:
		//	state += 1;
		//	Shudder(_kira);
		//break;
		
		//case 31:
		//	state += 1;
		//	Move_Character(_kira,"Down",1,2);	
		//break;
		
		//case 32:
		//	state += 1;
		//	Move_Character(_kira,"Left",1,2);	
		//break;
		
		//case 33:
		//	state += 1;
		//	alarm[0] = 30;
		//break;
		
		//case 34:
		//	state += 1;
		//	Move_Character(_kira,"Right",.5,1,"Left");	
		//break;
		
		//case 35:
		//	state += 1;
		//	Move_Character(_kira,"Left",.5,3);	
		//break;
		
		//case 36:
		//	state += 1;
		//	var _beer;
		//	_beer = Create_Overworld_Projectile(_kira.x,_kira.y,spr_AU_Beer_Overworld,0,270);
		//	_beer.sub_id = "Beer";
		//	Move_Overworld_Projectile(_beer,756,260,6);
		//	Play_Sound(sfx_Blast);
		//break;
		
		//case 37:
		//	state += 1;
		//	Move_Overworld_Projectile(_beer,720,240,2,270);
		//	Fade_Overworld_Projectile(_beer,1,0,.025);
		//	Play_Sound(sfx_Hit);
		//	_max.rotation = 90;
		//	_max.image_speed = 0;
		//break;
		
		//case 38:
		//	state += 1;
		//break;
		
		//case 39:
		//	state += 1;
		//	Move_Character(_kira,"Left",2,1);
		//break;
		
		//case 40:
		//	state += 1;
		//	Shudder(_kira);
		//	Face_Direction(_jason,"Right");
		//break;
		
		//case 41:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"12"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 42:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"14"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 43:
		//	state += 1;
		//	_max.rotation = 0;
		//	_max.image_speed = _max.idle_animation_speed;
		//	Perform_Jump(_max,1);
		//break;
		
		//case 44:
		//	state += 1;
		//	Face_Direction(_max,"Right");
		//	Shudder(_max);
		//break;
		
		//case 45:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"13"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 46:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"15"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 47:
		//	state += 1;
		//	if(Can_Afford_Cost(20)){
		//		Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"16"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	}
		//	else{
		//		Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"18"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	}
		//break;
		
		//case 48:
		//	state += 1;
		//	Shudder(_kira);
		//break;
		
		//case 49:
		//	state += 1;
		//	if(Can_Afford_Cost(20)){
		//		Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"17"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	}
		//	else{
		//		Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"19"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//	}
		//break;
		
		//case 50:
		//	state += 1;
		//	Shudder(_max);
		//break;
		
		//case 51:
		//	state += 1;
		//	Move_Character(_max,"Right",1.5,6);
		//break;
		
		//case 52:
		//	state += 1;
		//	Play_Sound(sfx_Blast);
		//	Move_Character(_max,"Right",.5,2,"Right",_max.player_walking_animation_speed,true);
		//	Move_Character(_kira,"Right",.5,2,"Left",_kira.player_walking_animation_speed,false,true);
		//break;
		
		//case 53:
		//	state += 1;
		//	alarm[0] = 1;
		//break;
		
		//case 54:
		//	state +=1;
		//	Play_Sound(sfx_Blast);
		//	Move_Character(_max,"Left",.5,4,"Right",_max.player_walking_animation_speed,true);
		//	Move_Character(_kira,"Left",.5,4,"Left",_kira.player_walking_animation_speed,false,true);
		//break;
		
		//case 55:
		//	state += 1;
		//	Move_Character(_max,"Left",1.5,4,"Right");
		//break;
		
		//case 56:
		//	state += 1;
		//	Play_Sound(sfx_Hit);
		//	_max.rotation = 90;
		//	_max.image_speed = 0;
		//	alarm[0] = 20;
		//break;
		
		//case 57:
		//	state += 1;
		//	_max.rotation = 0;
		//	_max.image_speed = 0;
		//	Perform_Jump(_max,1);
		//break;
		
		//case 58:
		//	state +=1;
		//	Move_Character(_max,"Right",1,4,"Right",_max.player_walking_animation_speed,true);
		//	Move_Character(_kira,"Left",1,4,"Left",_kira.player_walking_animation_speed,false);
		//break;
		
		//case 59:
		//	state += 1;
		//	_max.visible = false;
		//	_kira.visible = false;
		//	instance_create_layer(_max.x+12,_max.y,"Game_Object_Overlay_Instance_Layer",obj_Overworld_Brawl);
		//	alarm[0] = 60;
		//break;
		
		//case 60:
		//	state += 1;
		//	_karina = Create_NPC(672,168,"Left","AU_Karina",true);
		//	alarm[0] = 10;
		//break;
		
		//case 61:
		//	state += 1;
		//	Move_Character(_karina,"Left",1,1);
		//break;
		
		//case 62:
		//	state += 1;
		//	Move_Character(_karina,"Down",3,1);
		//break;
		
		//case 63:
		//	state += 1;
		//	Move_Character(_karina,"Right",1,1);
		//break;
		
		//case 64:
		//	state += 1;
		//	Shake_Head(_karina);
		//break;
		
		//case 65:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"20"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 66:
		//	state += 1;
		//	Shudder(_karina);
		//	Look_At_Target(_jason,_karina);
		//	Look_At_Target(_ciera,_karina);
		//break;
		
		//case 67:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"21"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 68:
		//	state += 1;
		//	instance_destroy(obj_Overworld_Brawl);
		//	_max.visible = true;
		//	_kira.visible = true;
		//	Move_Character(_max,"Down",1,1,"Up",_max.player_walking_animation_speed,true);
		//	Move_Character(_kira,"Right",1,1,"Left",_kira.player_walking_animation_speed,false);
		//break;
		
		//case 69:
		//	state += 1;
		//	Look_At_Target(_max,_karina);
		//	Create_Character_Dialogue("Local",_ciera,Get_Cutscene_Messages(id,"22"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 70:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"23"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 71:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"24"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 72:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"25"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 73:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"26"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 74:
		//	state += 1;
		//	Shudder(_kira)
		//break;
		
		//case 75:
		//	state += 2;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"27"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;

		
		//case 77:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"28"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 78:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"29"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 79:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"30"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 80:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"31"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 81:
		//	state += 1;
		//	Shudder(_karina);
		//break;
		
		//case 82:
		//	state += 1;
		//	Enable_Spell_Cast_Flash(_karina,3,c_black,c_white);
		//	Play_Sound(sfx_Spell_Cast);
		//	alarm[0] = 30;
		//break;
		
		//case 83:
		//	state += 1;
		//	Move_Character(_kira,"Left",1,1);
		//break;
		
		//case 84:
		//	state += 1;
		//	Shudder(_jason);
		//break;
		
		//case 85:
		//	state += 1;
		//	Move_Character(_jason,"Up",1,2);
		//break;
		
		//case 86:
		//	state += 1;
		//	Face_Direction(_jason, "Left");
		//	alarm[0] = 10;
		//break;
		
		//case 87:
		//	state += 1;
		//	Face_Direction(_jason, "Right");
		//	alarm[0] = 10;
		//break;
		
		//case 88:
		//	state += 1;
		//	Face_Direction(_jason, "Left");
		//	alarm[0] = 10;
		//break;
		
		//case 89:
		//	state += 1;
		//	Shudder(_jason);
		//break;
		
		//case 90:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"32"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 91:
		//	state += 1;
		//	Face_Direction(_kira, "Right");
		//	Disable_Spell_Cast_Flash(_karina);
		//	Create_Character_Dialogue("Local",_kira,Get_Cutscene_Messages(id,"33"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 92:
		//	state += 1;
		//	Face_Direction(_jason, "Right");
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"34"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 93:
		//	state += 1;
		//	Face_Direction(_karina, "Left");
		//	Create_Character_Dialogue("Local",_karina,Get_Cutscene_Messages(id,"35"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 94:
		//	state += 2;
		//	Face_Direction(_ciera, "Up");
		//	Create_Character_Dialogue("Local",_ciera,Get_Cutscene_Messages(id,"36"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 96:
		//	state += 1;
		//	Face_Direction(_jason, "Down");
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"37"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 97:
		//	state += 1;
		//	Shudder(_max);
		//break;
		
		//case 98:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_max,Get_Cutscene_Messages(id,"38"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 99:
		//	state += 1;
		//	Shudder(_jason);
		//break;
		
		//case 100:
		//	state += 1;
		//	Create_Character_Dialogue("Local",_jason,Get_Cutscene_Messages(id,"39"),id,true,true);//lookup type, character, message, object, arrow, auto-pan
		//break;
		
		//case 101:
		//	state += 1;
		//	Move_Character(_ciera,"Right",1,2,"Right",_ciera.player_walking_animation_speed,false);
		//	Move_Character(_karina,"Right",5,2,"Right",_karina.player_walking_animation_speed,true);
		//break;
		
		//case 102:
		//	state += 1;
		//	global.Story_State += 1;
		//	Follow_Character(_max,_jason);
		//	Follow_Character(_ciera,_max);
		//	Follow_Character(_kira,_ciera);
		//	Follow_Character(_karina,_kira);
		//	_jason.cutscene_mode = false;
		//	_max.cutscene_mode = false;
		//	_ciera.cutscene_mode = false;
		//	_kira.cutscene_mode = false;
		//	_karina.cutscene_mode = false;
		//	_bartender.cutscene_mode = false;
		//	instance_destroy(_beer);
		//	_jason.allow_interaction = true;
		//	Join_Party("Global",3,"Player",true,true);
		//	Join_Party("Global",4,"Player",true,true);
		//	if(Can_Afford_Cost(20)){
		//		Remove_Gold(20);	
		//	}
		//	instance_destroy(Get_Character("AU_Hillford_Door_Blocker_01"));
		//	instance_destroy(Get_Character("AU_Hillford_Door_Blocker_02"));
		//	instance_destroy(Get_Character("AU_Hillford_Mine_Blocker"));
			
		//break;
		
	}
}