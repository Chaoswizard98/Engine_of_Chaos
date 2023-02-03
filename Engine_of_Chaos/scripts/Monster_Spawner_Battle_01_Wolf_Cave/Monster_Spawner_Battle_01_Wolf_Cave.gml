//============
//Create Event
//============
function Set_Monster_Spawner_Stats_Battle_01_Wolf_Cave(_spawner){
	with(_spawner){
		remaining_units = 3;//number of enemies this will spawn. (-1 for infinite)
		max_active_units = -1;//max units that can be on the map from this tile at one time
		cooldown_type = "Turn_Start";//when do we update the cooldown timer?
		cooldown = 0;//cooldown between spawns
		timer = 0;//timer counts from cooldown to 0
                
		spawn_criteria = "Turn_Start";//when does this event get triggered?
		spawn_state = 2;//what region does the player need to be in?
		attack_on_spawn = true;//does this character attack when spawned in?
		spawn_action = "none";//action variable, //Immediate_Action
	}
}

//===========
//Spawn Event
//===========
function Spawn_Monster_Battle_01_Wolf_Cave(_spawner){
	var _character = noone;
	
	with(_spawner){
		if(remaining_units = 3){
		    _character = Create_NPC(x,y,"Down","AU_Alpha_Wolf",true);//x,y,direction,character_ID,cutscene_mode
		    _character.ai_script_ID = "AI_Battle_01_Alpha_Wolf";
		}
		else{
		    _character = Create_NPC(x,y,"Down","AU_Wolf",true);//x,y,direction,character_ID,cutscene_mode
		    _character.ai_script_ID = "AI_Battle_01_Alpha_Wolf_Guard";
		}
	}
	
	return _character;
}