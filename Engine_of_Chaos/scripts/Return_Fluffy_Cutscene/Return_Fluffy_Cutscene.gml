function Return_Fluffy_Cutscene() {
	var _jason = player_trigger;
	var _judy = Get_Character("Judy");
	var _fluffy = Get_Character("Fluffy");

	switch(state){
	    case 0:
			if(!Faction_Has_Item_In_Inventory("Global","Player","AU_Fluffy")){
				instance_destroy();
			}
			else{
		        state += 1;
		        _jason.allow_interaction = false;
		        _jason.cutscene_mode = true;
		        _judy.cutscene_mode = true;
				Move_Character(_jason,"Up",1,2);
			}
	    break;
	    case 1:
	        state += 2;
			_fluffy = Create_NPC(_jason.x,_jason.y,"Up","Fluffy",true);
			Move_Character(_fluffy,"Up",3,2);
			//Perform_Jump(_fluffy,1);
	    break;
	    //case 2:
	        //state += 1;
			//Move_Character(_fluffy,"Up",3,2);
	    //break;
	    case 3:
	        state += 1;
			Face_Direction(_fluffy,"Left");
			Shudder(_fluffy);
	    break;
	    case 4:
	        state += 1;
			Create_Character_Dialogue("Local",_fluffy,Get_Cutscene_Messages(id,"01"),id,true,true);//portrait, voice, message,object,arrow,pan
	    break;
		case 5:
			state += 1;
			Shudder(_judy);
		break;
		case 6:
			state += 1;
			Create_Character_Dialogue("Local",_judy,Get_Cutscene_Messages(id,"02"),id,true,true);//portrait, voice, message,object,arrow,pan
		break;
		case 7:
			state += 1;
			Perform_Jump(_judy,1);
		break;
		case 8:
			state += 1;
			Move_Character(_judy,"Right",2.5,3);
		break;
		case 9:
			state += 1;
			Create_Character_Dialogue("Local",_judy,Get_Cutscene_Messages(id,"03"),id,true,true);//portrait, voice, message,object,arrow,pan
		break;
		case 10:
			state += 1;
			Move_Character(_judy,"Left",.5,2,"Right");
		break;
		case 11:
			state += 1;
			Create_Character_Dialogue("Local",_judy,Get_Cutscene_Messages(id,"04"),id,true,true);//portrait, voice, message,object,arrow,pan
		break;
		case 12:
			state += 1;
			Move_Character(_judy,"Down",1,1);
			Move_Character(_jason,"Up",2,2);
		break;
		case 13:
			state += 1;
			Face_Direction(_judy,"Right");
		break;
		case 14:
			state += 1;
			Face_Direction(_jason,"Left");
			Create_Character_Dialogue("Local",_judy,Get_Cutscene_Messages(id,"05"),id,true,true);//portrait, voice, message,object,arrow,pan
		break;
		case 15:
			state += 1;
			Remove_Faction_Item("Global","Player","AU_Fluffy")
			Give_Faction_Item("Global","Player","AU_Agility_Ring");
			Create_Dialogue(noone,noone,Get_Cutscene_Messages(id,"06"),id,false,true);//portrait, voice, message,object,arrow,pan
			Stop_Dialogue_Interaction();
			Wait_For_Sound(sfx_Loot_Item,obj_Dialogue_Controller);
		break;
		case 16:
			state += 1;
			Nod_Head(_judy);
		break;
		case 17:
			state += 1;
			Create_Character_Dialogue("Local",_judy,Get_Cutscene_Messages(id,"07"),id,true,true);//portrait, voice, message,object,arrow,pan
		break;
		case 18:
			state += 1;
			Move_Character(_judy,"Up",1,1);
		break;
		case 19:
			state += 1;
			Move_Character(_judy,"Left",2,1);
			Move_Character(_fluffy,"Left",2,1);
		break;
		case 20:
			counter += 1;
			if(counter = 2){
				counter = 0;
				state += 1;
				Face_Direction(_judy,"Right");
				Move_Character(_fluffy,"Down",1,1);
			}
		break;
		case 21:
			state += 1;
			Move_Character(_fluffy,"Left",1,1);
		break;
		case 22:
			state += 1;
			Face_Direction(_fluffy,"Right");
			_jason.cutscene_mode = false;
	        _jason.allow_interaction = true;
	        _judy.cutscene_mode = false;
			_fluffy.cutscene_mode = false;
			Set_Story_Flag(0,1,"Returned_Fluffy");//Remember that we returned fluffy
			Town_Character_Stats_Judy(_judy);//Update judy's dialogue scripts
	        instance_destroy();
		break;
	}
}